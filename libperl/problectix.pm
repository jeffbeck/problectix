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
   return %config;
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
   open (PROJECT, "<$datei");
   while(<PROJECT>){
     chomp();
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









# return 1 to make perl happy
1;
