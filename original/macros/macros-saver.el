(defun save-last-kbd-macro-as (name)
  (interactive "SSave last kbd macro as: ")
  (save-excursion
    (name-last-kbd-macro name)
    (find-file "~/.emacs.d/user-macros.el")
    (end-of-buffer)
    (insert-kbd-macro name)))

(defun global-set-save-key (key command)
  (interactive "KSet key globally: \nCSet key %s to command: ")
  (find-file "~/.emacs.d/user-keys.el")
  (end-of-buffer)
  ; TODO handle of enter is not correct
  (insert (format "(global-set-key \"%s\" '%s)\n\n" (key-description key) command))
  (global-set-key key command))

(provide 'macros-saver)