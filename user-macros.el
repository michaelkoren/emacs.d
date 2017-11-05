(provide 'user-macros)
;; this file will contain ONLY macros and their hotkeys assignments.


;(fset 'write-pdb-set-trace
;      [return up tab ?i ?m ?p ?o ?r ?t ?  ?p ?d ?b ?  ?\; ?  ?p ?d ?b ?. ?s ?e ?t ?_ ?t ?r ?a ?c ?e ?( ?)])

(fset 'write-pdb-set-trace
      [?i ?m ?p ?o ?r ?t ?  ?p ?d ?b ?  ?\; ?  ?p ?d ?b ?. ?s ?e ?t ?_ ?t ?r ?a ?c ?e ?( ?)])

;(define-key py-mode-map (kbd "C-c b") 'write-pdb-set-trace)
;; user this ONLY if the above fails from some reason
(global-set-key (kbd "C-c b") 'write-pdb-set-trace)

(fset 'print-docstring
      [home ?p ?r ?i ?n ?t ?(  end ?. ?_ ?_ ?d ?o ?c ?_ ?_ ?) return])

;(define-key py-mode-map (kbd "<M-d>") 'print-docstring)
;; user this ONLY if the above fails from some reason
(global-set-key (kbd "<M-d>") 'print-docstring)

(fset 'underline
   [home end return ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= ?= home up end down S-end delete return])
(fset 'wrap-try-except-pdb
   [S-delete home left return tab ?t ?r ?y ?: return S-insert tab ?e ?x ?c ?e ?p ?t ?: return tab ?\C-c ?b up up ?\C-x tab ?\C-x tab ?\C-x tab ?\C-x tab down home C-right C-left])

(global-set-key (kbd "C-c C-b") 'wrap-try-except-pdb)

(fset 'print-reload
   "from imp import reload as R; ")
(global-set-key (kbd "C-c r") 'print-reload)

(defun copy-buffer-name ()
  (interactive)
  (let* ((current-buffer-name (buffer-name)))
    (kill-new current-buffer-name)))

(defun copy-paste-buffer-name ()
  (interactive)
  (copy-buffer-name)
  (yank))

;; http://ergoemacs.org/emacs/elisp_cut_copy_yank_kill-ring.html
;; http://ergoemacs.org/emacs/elisp_printing.html
;; http://ergoemacs.org/emacs/elisp.html

;;    (print current-buffer-name)))
;    (clipboard-kill-ring-save current-buffer-name)
;    (clipboard-yank)))

;;(setf current-buffer-name (buffer-name ))
;;(setf current-buffer-obj (current-buffer))
;;(interactive)
;;(setf current-buffer-name (buffer-name 'current-buffer-obj))

