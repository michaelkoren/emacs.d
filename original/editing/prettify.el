(defun prettify ()
  (interactive)
  (if mark-active
      (shell-command-on-region (region-beginning) (region-end) "python ~/.emacs.d/editing/prettify.py" (current-buffer) (region-beginning) (region-end))
    (shell-command-on-region (point-at-bol) (point-at-eol) "python ~/.emacs.d/editing/prettify.py" (current-buffer) (point-at-bol) (point-at-eol)))
  )

(defun eq-indent ()
  (interactive)
  (shell-command-on-region (region-beginning) (region-end) "python ~/.emacs.d/editing/eq_indent.py" (current-buffer) 1)
  )

(global-set-key [(control =)] 'eq-indent)
(global-set-key [(control \`)] 'prettify)


(provide 'prettify)