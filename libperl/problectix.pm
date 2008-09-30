# Dieses Modul (problectix.pm) wurde von Rüdiger Beck erstellt
# Es ist freie Software
# Bei Fehlern wenden Sie sich bitte an mich.
# jeffbeck@web.de  oder  jeffbeck@gmx.de

package problectix;

sub get_config {
   my %config=();
   # $HOME ermitteln
   my $home="$ENV{'HOME'}";
   $config{'home'}= $home;
   my $texinputs="$ENV{'TEXINPUTS'}";
   $config{'texinputs'}= $texinputs;
   # systemweite Konfiguration
   my $sys_config = "/etc/problectix/problectix.conf";
   $config{'sys_config'}= $sys_config;
   # userabhaengige Konfiguration
   my $config_dir="$ENV{'HOME'}/.problectix";
   my $user_config="$config_dir"."/.problectix";
   $config{'user_config'}= $user_config;
   # projekte eines users
   my $project_dir="$config_dir/projects";
   $config{'project_dir'}= $project_dir;
   # aktives projekt eines users
   my $active_project="$project_dir"."/.project";
   $config{'active_project'}= $active_project;
   my $output_path;
   my $start_path;
   my $browsetree_path;
   if (-e "$sys_config") {
      { package SysConf ; do "$sys_config"}
      $output_path="$SysConf::output_path";
      $start_path="$SysConf::start_path";
      $browsetree_path="$SysConf::browsetree_path";
   }
   if (-e "$user_config") {
      { package UserConf ; do "$user_config"}
      $out_path="$UserConf::output_path";
      $start_path="$UserConf::start_path";
      $browsetree_path="$UserConf::browsetree_path";
   }
   $config{'output_path'}=$output_path;
   $config{'start_path'}=$start_path;
   $config{'browsetree_path'}=$browsetree_path;
   # TEXINPUTS ermitteln
   ($texinputs_error,$texinputs)=&get_texinputs();
   $config{'texinputs'}=$texinputs;
   $config{'texinputs_error'}=$texinputs_error;
    return %config;
}




sub get_texinputs{
    # Where to look for definitions
    my @filelist=("$ENV{'HOME'}/.bashrc");
    my @return=();
    my $file;
    my $count=2;
    my $var;
    my $value;
    $return[1]=$ENV{'TEXINPUTS'};
    foreach $file (@filelist) {
      if (-e $file) {
	open(FILE, "<$file");
        while (<FILE>){
           if(/^\#/){next;} # Bei Kommentarzeichen aussteigen
           # export raus
           s/export//;
           # Leerzeichen ersetzten      
           s/ //g; 
           chomp();
           if ($_ eq ""){next;} # Wenn Zeile Leer, dann aussteigen
           ($var,$value)=split(/=/);
           if ($var eq "TEXINPUTS"){
	     #  print $var," --- ",$value,"\n";
             $value=~s/\$HOME/$ENV{'HOME'}/g;
             $value=~s/\$TEXINPUTS/$return[1]/g;
             # Kommentare entfernen
	     $value=~s/^\"//g;
             $value=~s/\"$//g;
             $return[1]="$value";
             $count++;
           }
        }
        close(FILE);
     }
    }
    # Ergebnis:
    if (not defined $return[1]){
        # nix definiert
	$return[0]=0;
    } elsif ($count >= 4){
        # mehrmals in den Dateien definiert
      	$return[0]=2;
    } else {
        # OK
        $return[0]=1;
    }
    # return[0]: 1=OK, 0=nichts gefunden, 2=evtl. zuviel gefunden
    # return[1]: Inhalt der gültigen Umgebungsvariablen
    return @return;
}



sub get_active_project { # OK in pm
    my %config=&problectix::get_config();
    my $active;
    if (-l $config{active_project}) {
       $active = readlink "$config{active_project}";
       return $active;
    } else {
       return undef;
       #return "Kein aktives Projekt";
    }
}



sub get_project_list{ # OK in pm
    my %config=&problectix::get_config();
    my $number=0;
    if (defined $_[0]){
       $number=$_[0];
    }
    my @projects=();
    opendir(DIR, $config{project_dir}) || 
        die "Kann $config{project_dir} nicht öffnen: $!";
    while (defined (my $file = readdir(DIR))) {
        # Eintrag verarbeiten
        if (not $file eq "." and
            not $file eq ".." and
            not $file eq ".project" and
            not $file=~/~/) {
           push (@projects, $file);
       }
     }
    # ascibetisch ordnen
    @projects = sort @projects;
    # aktives Projekt ermitteln
    my $active=&get_active_project();
    unshift (@projects, "$active");
    if ($number==0){
       return @projects;
    } else {
       #$number=$number-1;
       return $projects[$number];
    }
}




sub get_dirlist_of_project {
   my ($project) = @_;
   my %config=&problectix::get_config();
   my $datei="$config{project_dir}"."/$project";
#print "Datei ist:   $datei\n";
   my @dirlist=();
   if (not -e $datei){
       return @dirlist;
   }
   open (PROJECT, "<$datei");
   while(<PROJECT>){
     chomp();
     if (/^LATEXNAME=/){
	 next;
     }
     s/\s//g; # Spezialzeichen raus
     if ($_ eq ""){next;} # Wenn Zeile Leer, dann aussteigen
     if(/^\#/){next;} # Bei Kommentarzeichen aussteigen
     # Homedir davorsetzen
     $_="$config{home}"."/$_";
     push (@dirlist, $_);
   }
   close(PROJECT);
   return @dirlist;
}



sub get_info_of_project {
   my ($project) = @_;
   my %config=&problectix::get_config();
   my $datei="$config{project_dir}"."/$project";
   my @dirlist=();
   my $latex_name="";
   my $key="";
   if (not -e $datei){
       return ("");
   }
   open (PROJECT, "<$datei");
   while(<PROJECT>){
     chomp();
     if (/^LATEXNAME=/){
         ($key,$latex_name)=split(/=/);
     }
   }
   close(PROJECT);
   return ($latex_name);
}



sub get_optional_options {
   # looks in the system for optional options
   # of the documentclass teacher
   my @options=();
   my $option="";
   my $extension="";
   my %options=();
   my $key="";
   my $value="";
   my $templatedir="/usr/share/texmf/tex/latex/problectix/template";
   opendir(DIR, $templatedir) || 
      die "Kann $templatedir nicht öffnen: $!"; 
   while (defined (my $file = readdir(DIR))) {
       if ($file eq "." or $file eq ".."){next};
       ($option,$extension) = split(/\-/, $file);
       if (not exists $options{$option}){
	   $options{$option}="";
       }
   }
   while (($key,$value) = each %options){
     push @options, $key; 

   }
   return @options;
}



# Diese Subroutine bekommt als Argment den Parsewert der Funktion GetOptions.
# Ist dieser nicht 1, so wurde eine Fehlerhafte Option vergeben
sub  check_options{
   my ($parse_ergebnis) = @_;
   if (not $parse_ergebnis==1){
      my @list = split(/\//,$0);
      my $scriptname = pop @list;
      print "\nSie haben bei der Eingabe der Optionen einen Fehler begangen.\n"; 
      print "Siehe Fehlermeldung weiter oben. \n\n";
      print "... $scriptname beendet sich.\n\n";
      exit;
   } else {
         print "Alle Befehls-Optionen wurden erkannt.\n";
   }

}



# return 1 to make perl happy
1;
