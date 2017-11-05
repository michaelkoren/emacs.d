(setq CONFIGURATION-PATH (expand-file-name "~/.emacs.d"))
(setq load-path (cons CONFIGURATION-PATH load-path))

;; (require 'user-keys)
;; (require 'user-macros)

(require 'packages-manager)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

(packages-manager-load-packages
 CONFIGURATION-PATH
 (list
  "display"
  "editing"
  "navigation"
  "macros"
  "documentation"
  "shell"
  "development"
  ))

(global-set-key [(control x) (control c)] (defun dont-kill-emacs() (interactive) (message "Use C-x c to leave")))
(global-set-key [(control x) (c)] 'save-buffers-kill-emacs)
(global-set-key [(control b)] 'ido-switch-buffer)
(global-set-key [(control z)] 'undo)
(global-set-key [f5] 'delete-other-windows)
(global-set-key [f9] 'compile)
(global-set-key [(alt f9)] 'grep)
(global-set-key [(control f9)] 'find-grep)
(global-set-key [f4] 'next-error)
(global-set-key [(shift f4)] 'previous-error)

;; everybody loves tabbar mode!
(tabbar-mode 1)

;; Smooth scrolling
(defun scroll-one-down ()
  (interactive)
  (scroll-down 1))
(defun scroll-one-up ()
  (interactive)
  (scroll-up 1))

(global-set-key [(meta up)] 'scroll-one-down)
(global-set-key [(meta down)] 'scroll-one-up)

(set-cursor-color "white")
;; (flymake-mode) ;; <-- from some reason no way to run this on startup without fail :(
;;(icomplete-mode 99)
(setq default-frame-alist '((cursor-color . "white")))
(delete-selection-mode 1)
