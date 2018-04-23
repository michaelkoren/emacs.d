(setq CONFIGURATION-PATH (expand-file-name "~/.emacs.d"))
(setq load-path (cons CONFIGURATION-PATH load-path))


(require 'packages-manager)
(require 'package)
 
(require 'extra-hotkeys)

(setq w32-pass-multimedia-buttons-to-system nil
      ;w32-lwindow-modifier                  'super
      ;w32-rwindow-modifier                  'hyper
      ;w32-pass-lwindow-to-system            nil
      ;w32-pass-rwindow-to-system            nil
      )

(setq ps-printer-name t)
(setq ps-lpr-command "gswin32c")
(setq ps-lpr-switches '("-q" "-dNOPAUSE" "-"))

;; this is probably only useful under windows-emacs, and not our cygwin-emacs
;; the only actual problem here is that (I think) gswin32c can not find the path
;; because its a cygpath, and not a winpath
;; we need to use `/bin/cygpah.exe -w %PATH%` as a "MIDDLE-MAN" that will convert the
;; given %PATH% parameter from cyg-format to win-format and then forward it to `gswin32c`
;; then, we will achieve success!
;; also, a good read (probably):
;;   http://emacsworld.blogspot.co.il/2009/08/getting-docview-to-work-on-windows.html
;;   https://cygwin.com/ml/cygwin/2003-11/msg00843.html
;;   https://www.google.co.il/search?q=gswin32c+cygpath&oq=gswin32c+cygpath&aqs=chrome..69i57.429j0j7&sourceid=chrome&es_sm=0&ie=UTF-8
;; (setq doc-view-ghostscript-program "gswin32c")
;;;;;;;;;;;; NEVER MIND FORGOT ALL OF THIS,
;;;;;;;;;;;; REINSTALLING GHOSTSCRIPT FIXED THE PROBLEM, THERE WAS A MISSING /USR/BIN/GS.EXE FILE AND NOW ITS BACK!

(when (>= emacs-major-version 24)
;  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

;; for mac:
(global-unset-key [(end)])
(global-set-key [(end)] 'move-end-of-line)
(global-unset-key [(home)])
(global-set-key [(home)] 'move-beginning-of-line)
(global-set-key [(s-up)] 'comint-previous-matching-input-from-input)
(global-set-key [(s-down)] 'comint-next-matching-input-from-input)


;;(require 'server)
;; (and (>= emacs-major-version 23)
;;     (defun server-ensure-safe-dir (dir) "Noop" t))
;;
;;;set server-host to be the name of the machine Emacs server will run on
;;(setq server-host "192.168.2.100")
;;;set server-use-tcp to t
;;(setq server-use-tcp t)
;;(server-start)

(packages-manager-load-packages
 CONFIGURATION-PATH
 (list
  "editing"
  "display"
  "navigation"
  "macros"
  "documentation"
  "shell"
  "development"
  ))

;;; https://magit.vc/manual/magit/Installing-from-the-Git-Repository.html#Installing-from-the-Git-Repository
;(add-to-list 'load-path "~/.emacs.d/site-lisp/magit/lisp")
;(require 'magit)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/.emacs.d/site-lisp/magit/Documentation/"))

(auto-complete-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(current-language-environment "Hebrew")
 '(frame-background-mode (quote dark))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(virtualenv-root "~/.emacs.d/virtualenv_dir"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "white" :background "black"))))
 '(diff-added ((t (:background "#003000"))))
 '(diff-hunk-header ((t (:background "blue"))))
 '(diff-removed ((t (:background "#300000"))))
 '(font-lock-comment-face ((t (:foreground "green"))))
 '(font-lock-doc-face ((t (:foreground "green2"))))
 '(font-lock-function-name-face ((t (:foreground "gold"))))
 '(font-lock-keyword-face ((t (:foreground "red"))))
 '(font-lock-preprocessor-face ((t (:foreground "yellow"))))
 '(font-lock-string-face ((t (:foreground "cyan"))))
 '(font-lock-type-face ((t (:foreground "green3"))))
 '(font-lock-variable-name-face ((t (:foreground "aquamarine"))))
 '(font-lock-warning-face ((t (:foreground "#Ea0" :bold t))))
 '(isearch ((t (:background "cornflowerblue"))))
 '(region ((t (:background "#444444"))))
 '(show-paren-match ((t (:background "#444464"))))
 '(show-paren-mismatch ((t (:background "#600000"))))
 '(tabbar-default-face ((t (:inherit variable-pitch :background "gray72" :foreground "black" :height 1.0)))))
