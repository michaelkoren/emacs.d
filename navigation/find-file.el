(defun find-pointed-file ()
  (interactive)
  (let ((pointed-col (number-to-string (current-column))))
    (save-excursion
      (beginning-of-line-nomark)
      (end-of-line-mark)
      (shell-command-on-region (region-beginning) (region-end) (concat "python ~/.emacs.d/navigation/find_file.py " pointed-col) "**script**")
      (set-buffer "**script**")
      (find-file (substring (buffer-string) 0 -1))
      (kill-buffer "**script**"))
    )
  )

(global-set-key [(meta return)] 'find-pointed-file)

(provide 'find-file)