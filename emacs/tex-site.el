;;; tex-site.el - Site specific variables.

;; Copyright (C) 1991, 2000, 2001 Kresten Krab Thorup
;; Copyright (C) 1993, 1994, 1997, 1999 Per Abrahamsen

;; Author: Per Abrahamsen <abraham@dina.kvl.dk>
;; Maintainer: Per Abrahamsen <auc-tex@sunsite.dk>
;; Version: 11.11
;; Keywords: wp

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:

;; This file contains variables customized for the local site.

;; It also contains all necessary autoloads, so the user can simple
;; enable AUC TeX by putting (load "tex-site") in his .emacs file,
;; or the administrator can insert it in the site-start.el file.
;;
;; The ideal place for this file is in the `site-lisp' directory.

;;; Code:

(when (< emacs-major-version 20)
  (error "AUC TeX requires Emacs 20 or later"))

;;; Customized for Debian GNU/Linux by Davide G. M. Salvetti <salve@debian.org>

;; The directory where the AUC TeX lisp files are located.
(defvar TeX-lisp-directory (concat
			    "/usr/share/"
			    (symbol-name debian-emacs-flavor)
			    "/site-lisp/auctex/"))

;; Directories containing the sites TeX macro files and style files.
;; The directory names *must* end with a slash.
(defvar TeX-macro-global '("/usr/local/share/texmf/tex/"
			   "/usr/local/share/texmf/bibtex/"
			   "/usr/share/texmf/tex/"
			   "/usr/share/texmf/bibtex/"))

;; Directory containing automatically generated information.
;; Must end with a slash.
(defvar TeX-auto-global (concat
			 "/var/lib/auctex/"
			 (symbol-name debian-emacs-flavor)
			 "/"))

;; List of commands to execute on the current document.
(defvar TeX-command-list
  `(("TeX" "tex %x '\\nonstopmode\\input %t'" TeX-run-TeX nil t)
    ("TeX Interactive" "tex %x %t" TeX-run-interactive nil t)
    ("LaTeX" "latex %x '\\nonstopmode\\input{%t}'" TeX-run-LaTeX nil t)
    ("LaTeX Interactive" "latex %x %t" TeX-run-interactive nil t)
    ,(if (or window-system (getenv "DISPLAY"))
	 '("View" "%v " TeX-run-silent t nil)
       '("View" "catdvi %d " TeX-run-command t nil))
    ("Print" "%p %r " TeX-run-command t nil)
    ("Queue" "%q" TeX-run-background nil nil)
    ("File" "dvips %d -o %f " TeX-run-command t nil)
    ("BibTeX" "bibtex %s" TeX-run-BibTeX nil nil)
    ("Index" "makeindex %s" TeX-run-command nil t)
    ("Check" "lacheck %s" TeX-run-compile nil t)
;; All-in-one: perl-Script, das alles latext 
    ("All-in-one" "jefflatex --file %s" TeX-run-command nil t)
;; All-in-one-PDF: perl-Script, das alles latext 
    ("All-in-one-PDF" "jefflatex --pdf --file %s" TeX-run-command nil t)
    ("Spell" "<ignored>" TeX-run-ispell-on-document nil nil)
    ("Other" "" TeX-run-command t t)
    ;; Not part of standard TeX.
    ("PDFTeX" "pdftex '\\nonstopmode\\input %t'" TeX-run-TeX nil t)
    ("PDFTeX Interactive" "pdftex %t" TeX-run-interactive nil t)
    ("PDFLaTeX" "pdflatex '\\nonstopmode\\input{%t}'" TeX-run-LaTeX nil t)
    ("PDFLaTeX Interactive" "pdflatex %t" TeX-run-interactive nil t)
    ("Makeinfo" "makeinfo %t" TeX-run-compile nil t)
    ("Makeinfo HTML" "makeinfo --html %t" TeX-run-compile nil t)
    ("ThumbPDF" "thumbpdf %s" TeX-run-command nil nil)
    ("AmSTeX" "amstex '\\nonstopmode\\input %t'" TeX-run-TeX nil t)))

;; List of style options and view options.
(defvar TeX-view-style
  `(,(list (concat
	    "^"
	    (regexp-opt '("a4paper" "a4" "a4dutch" "a4wide" "sem-a4"))
	    "$")
	   "xdvi %d -paper a4")
    ,(list (concat
	    "^"
	    (regexp-opt '("a5paper" "a5" "a5comb"))
	    "$")
	   "xdvi %d -paper a5")
    ("^b5paper$" "xdvi %d -paper b5")
    ("^letterpaper$" "xdvi %d -paper us")
    ("^legalpaper$" "xdvi %d -paper legal")
    ("^executivepaper$" "xdvi %d -paper 7.25x10.5in")
    ;; We should really know better than this
    ("^landscape$" "xdvi %d -paper a4r -s 4")
    ;; TeX defaults to letterpaper, xdvi defaults to a4paper
    ("." "xdvi %d -paper us")))

;; List of style options and print options.
(defvar TeX-print-style '(("^landscape$" "-t landscape")))

(defcustom TeX-enable-source-specials-p t
  "*Non-nil means pass option `--src-specials' to TeX and friends."
  :group 'TeX-command
  :type 'boolean)

;; List of expansion strings for TeX command names.
(defvar TeX-expand-list
  '(("%p" TeX-printer-query)		;%p must be the first entry
    ("%q" (lambda () (TeX-printer-query TeX-queue-command 2)))
    ;; Qui sotto dovremmo mettere qualcosa per controllare anche il landscape.
    ;; Un'idea è quella di elencare le opzioni di xdvi nella forma -paper
    ;; WWxHHun e poi far scambiare WW e HH se c'è landscape (TeX-style-check
    ;; (...))
    ("%v" (lambda () (TeX-style-check TeX-view-style)))
    ("%r" (lambda () (TeX-style-check TeX-print-style)))
    ("%l" (lambda () (TeX-style-check LaTeX-command-style)))
    ("%s" file nil t)
    ("%t" file t t)
    ("%n" TeX-current-line)
    ("%d" file "dvi" t)
    ("%f" file "ps" t)
    ("%g" file "pdf" t)
    ("%x" (lambda ()
	 (if TeX-enable-source-specials-p "--src-specials" "")))
    ("%b" TeX-current-file-name-nondirectory)))

;;; Autoloads:

(defvar no-doc
  "This function is part of AUC TeX, but has not yet been loaded.
Full documentation will be available after autoloading the function."
  "Documentation for autoload functions.")

(add-to-list 'load-path TeX-lisp-directory)

;; This hook will store bibitems when you save a BibTeX buffer.
(add-hook 'bibtex-mode-hook 'BibTeX-auto-store)
(autoload 'BibTeX-auto-store "latex" no-doc t)

(autoload 'tex-mode "tex" no-doc t)
(autoload 'plain-tex-mode "tex" no-doc t)
(autoload 'ams-tex-mode "tex" no-doc t)
(autoload 'TeX-auto-generate "tex" no-doc t)
(autoload 'TeX-auto-generate-global "tex" no-doc t)
(autoload 'TeX-insert-quote "tex" no-doc t)
(autoload 'TeX-submit-bug-report "tex" no-doc t)
(autoload 'japanese-plain-tex-mode "tex-jp" no-doc t)
(autoload 'japanese-latex-mode "tex-jp" no-doc t)
(autoload 'japanese-slitex-mode "tex-jp" no-doc t)
;;(autoload 'texinfo-mode "tex-info" no-doc t)
(autoload 'latex-mode "latex" no-doc t)

(when (memq system-type '(windows-nt))
  ;; Try to make life easy for MikTeX users.
  (require 'tex-mik))

(provide 'tex-site)

;;; tex-site.el ends here
