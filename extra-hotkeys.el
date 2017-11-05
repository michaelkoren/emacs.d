(provide 'extra-hotkeys)

;; all hotkeys that use my saved macros are stored there:
(require 'user-macros)

;; w32 integration section:
(global-set-key (kbd "<M-SPC>") 'w32-menu-bar-open)


;; generic development and navigation hotkeys that I am too lazy to move somewhere else:
(global-set-key [(control x) (control c)] (defun dont-kill-emacs() (interactive) (message "Use C-x c to leave")))
(global-set-key [(control x) (c)] 'save-buffers-kill-emacs)
(global-set-key [(control z)] 'undo)

(global-set-key [f9] 'compile)
(global-set-key [(alt f9)] 'grep)
(global-set-key [(control f9)] 'find-grep)
(global-set-key [f4] 'next-error)
(global-set-key [(shift f4)] 'previous-error)

(global-set-key (kbd "<C-SPC>") 'auto-complete)
