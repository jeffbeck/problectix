;;
;; This is the emacs/Xemacs file of problectix
;,
;, It is loaded when emacs/Xemacs starts
;;

;(custom-set-variables
; '(load-home-init-file t t)
; '(case-fold-search t)
;; Text farbig hervorheben
;; '(global-font-lock-mode t nil (font-lock))

;; Menue ist immer noch Englisch, 
;; aber das Help-> Emacs-Tutorial ist Deutsch
;; '(current-language-environment "German"))
;;(custom-set-faces)


;;Visuelles Signal anstelle von Piepen:
;,   (setq visible-bell t)

;; This is for xemacs on Debian
;;(load "/usr/share/emacs/site-lisp/tex-site.el")
(load "/usr/share/emacs/site-lisp/auctex/tex.el")


(add-to-list 'TeX-command-list
    (list "JeffPS" "jefflatex --file %s" 'TeX-run-command nil t) 
 )

(add-to-list 'TeX-command-list
    (list "JeffPDF" "jefflatex --pdf --file %s" 'TeX-run-command nil t) 
 )

(add-to-list 'TeX-command-list
    (list "JeffPresentation" "jefflatex --presentation --file %s" 'TeX-run-command nil t) 
 )

(add-to-list 'TeX-command-list
    (list "JeffDVI" "xdvi %s" 'TeX-run-command nil t) 
 )

(defun do-jeff-ps ()
  "Starts latex -> dvi -> dvips -> PS-viewer"
  (save-buffer)
  (interactive)
  (TeX-command "JeffPS" 'TeX-master-file))

(defun do-jeff-xdvi ()
  "Starts latex -> dvi -> DVI-viewer"
  (save-buffer)
  (interactive)
  (TeX-command "JeffDVI" 'TeX-master-file))

(defun do-jeff-pdf ()
  "Starts latex -> pdflatex -> PDF-viewer"
  (save-buffer)
  (interactive)
  (TeX-command "JeffPDF" 'TeX-master-file))

(defun do-jeff-presentation ()
  "Starts latex -> dvipdf -> PDF-viewer"
  (save-buffer)
  (interactive)
  (TeX-command "JeffPresentation" 'TeX-master-file))



;; Tastenkombination und Einstellungen, die nur im LaTeX-mode gelten
(add-hook 'LaTeX-mode-hook
          '(lambda ()
                   (define-key LaTeX-mode-map [f5] 'do-jeff-ps)
                   (define-key LaTeX-mode-map [S-f5] 'do-jeff-pdf)
                   (define-key LaTeX-mode-map [s-f5] 'do-jeff-presentation)
;;                   (define-key LaTeX-mode-map [S-f5] 'do-jeff-xdvi)
                   (define-key LaTeX-mode-map [f6] 'do-xdvi)
                   (turn-on-font-lock)
             ))




;; Als letztes melden:
(message "Last Line of 55jeff.el reached, loaded.") 

