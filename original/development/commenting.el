(defun my-comment-region ()
  (interactive)
  (let ((beg (if mark-active (region-beginning) (point-at-bol)))
	(end (if mark-active (region-end) (point-at-eol))))
    (comment-region beg end 1)))

(defun my-uncomment-region ()
  (interactive)
  (let ((beg (if mark-active (region-beginning) (point-at-bol)))
	(end (if mark-active (region-end) (point-at-eol))))
    (comment-region beg end -1)))

(setq comment-padding 0)

(global-set-key [(meta \3)] 'my-comment-region)
(global-set-key [(meta \4)] 'my-uncomment-region)

(provide 'commenting)