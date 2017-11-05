(require 'buffer-rotate) ;; <-- doesn't work
;;(require 'position-markers) ;; <-- doesn't work
(require 'find-file)
(require 'place-marker)
(require 'speedbar-ext)

(defun switch-to-other-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer)))

(require 'ido)
(ido-mode t)
(icomplete-mode t)

(setq directory-free-space-program "df")
;; (setq directory-free-space-program "/bin/echo") ; running default df with exotic network mounts blocks the process
;;                                                 ; this is a hack to avoid it


;(global-set-key [(super right)] 'forward-sexp)
;(global-set-key [(super left)]  'backward-sexp)

(fset 'yes-or-no-p 'y-or-n-p)

(require 'tabbar)
(custom-set-faces '(tabbar-default-face  ((t (:inherit variable-pitch :background "gray72" :foreground "black" :height 1.0)))))

(require 'icomplete)
(icomplete-mode)
(require 'speedbar-ext)

(defun kill-buffer-and-close ()
  (interactive)
  (kill-this-buffer)
  (delete-window))

(defun kill-other-buffer-and-close ()
  (interactive)
  (other-window 1)
  (kill-buffer-and-close))

(defun swap-two-buffers ()
  (interactive)
  (let* ((first-buffer-name (buffer-name))
	 (second-buffer-anem (progn (other-window 1) (buffer-name))))
    (switch-to-buffer first-buffer-name)
    (other-window 1)
    (switch-to-buffer second-buffer-name)
    (other-window 1)))

(defun force-horizontal-split-two-buffers ()
  (interactive)
  (let* ((first-buffer-name (buffer-name))
	 (second-buffer-name (progn (other-window 1) (buffer-name))))
    (delete-other-windows)
    (split-window-horizontally)
    (switch-to-buffer first-buffer-name)
    (other-window 1)
    (switch-to-buffer second-buffer-name)
    (other-window 1)))

(defun force-vertical-split-two-buffers ()
  (interactive)
  (let* ((first-buffer-name (buffer-name))
	 (second-buffer-name (progn (other-window 1) (buffer-name))))
    (delete-other-windows)
    (split-window-vertically)
    (switch-to-buffer first-buffer-name)
    (other-window 1)
    (switch-to-buffer second-buffer-name)
    (swap-two-buffers)
    (other-window 1)))

(defun detach-window ()
  (interactive)
  (let* ((window-buffer-to-detach (buffer-name)))
    ;; TODO: if --calculate somehow amount of windows in current frame-- is 1,
    ;; then don't bother doing the following elisp code!
    ;; (won't matter anyhow, will just fail in an unelegant manner)
    (delete-window)
    (switch-to-buffer-other-frame window-buffer-to-detach)))


(defun kill-other-buffer ()
  (interactive)
  (other-window 1)
  (kill-this-buffer)
  (other-window 1))

(defun switch-to-other-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer)))

;(defun previous-window ()
;  (interactive)
;  (other-window -1))


;(defun previous-window ()
;  (interactive)
;  (previous-multiframe-window))


;; misc keys



(global-set-key [f6] 'switch-to-other-buffer)
(global-set-key [(control f6)] 'swap-two-buffers)
(global-set-key [f5]  'delete-other-windows)
(global-set-key [(control f5)] 'delete-window)
(global-set-key [(control meta r)] 'refontify)

(global-set-key (kbd "C-x C-2") 'force-vertical-split-two-buffers)
(global-set-key (kbd "C-x C-3") 'force-horizontal-split-two-buffers)

(global-set-key (kbd "C-x C-j") 'detach-window)
(global-set-key (kbd "C-x C-n") 'new-frame)
;;(define-key py-mode-map "\C-c\C-n" 'new-frame)
;;(define-key py-mode-map (kbd "C-c C-n") 'new-frame)


;;(global-set-key [pause] 'kill-this-buffer)
;;(global-set-key [(control pause)] 'kill-other-buffer)
(global-set-key [(control pause)] 'kill-this-buffer)
(global-set-key [M-delete] 'kill-this-buffer)

(global-set-key [scroll-lock] 'kill-buffer-and-close)
(global-set-key [(control scroll-lock)] 'kill-other-buffer-and-close)


(global-set-key [(control tab)] 'other-window)
(global-set-key [C-S-kp-tab] 'previous-multiframe-window)
;(global-set-key [C-S-kp-tab] 'previous-window)
;; I don't know why but sometimes iso-lefttab doesn't work...
;(global-set-key [C-S-iso-lefttab] 'previous-multiframe-window)
(global-set-key [C-S-iso-lefttab] 'previous-multiframe-window)
(global-set-key (kbd "<C-S-tab>") 'previous-multiframe-window)

;; my tabbar-overrides
(global-set-key [C-M-tab] 'tabbar-forward-group)
;;(global-set-key [C-tab] 'tabbar-forward-group)
(global-set-key [C-M-kp-tab] 'tabbar-backward-group)
;;(global-set-key [C-S-tab] 'tabbar-backward-group)
(global-set-key [C-M-S-iso-lefttab] 'tabbar-backward-group)
(global-set-key [M-right] 'tabbar-forward-tab)
(global-set-key [M-left] 'tabbar-backward-tab)

(global-set-key [XF86Forward] 'tabbar-forward-tab)
(global-set-key [XF86Back] 'tabbar-backward-tab)

(global-set-key [(control b)] 'ido-switch-buffer)
(global-set-key [(control f)] 'ido-find-file)
(global-set-key [(control o)] 'ido-switch-buffer-other-window)

(global-set-key [(control right)] 'forward-sexp)
(global-set-key [(control left)] 'backward-sexp)

(global-set-key [(meta g)] 'goto-line)




(defun search-from-top-1 ()
  (interactive)
  (goto-line 0)
  (isearch-repeat-forward))



(defun search-from-top-2 ()
  (interactive)
  (goto-line 0)
  (isearch-repeat-forward)
  (isearch-repeat-forward))


(defun search-from-top-3 ()
  (interactive)
  (goto-line 0)
  (isearch-repeat-forward)
  (isearch-repeat-forward)
  (isearch-repeat-forward))



(global-set-key (kbd "C-c C-1") 'search-from-top-1)
(global-set-key (kbd "C-c C-2") 'search-from-top-2)
(global-set-key (kbd "C-c C-3") 'search-from-top-3)

;;(global-set-key [(control shift iso-lefttab)] 'previous-multiframe-window)
;;(global-set-key [(scroll-lock)] 'kill-this-buffer)
