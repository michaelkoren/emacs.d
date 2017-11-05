;; koren's keys

;; (global-set-key [(control f4)] 'bury-buffer)

(fset 'write-pdb-set-trace
      [return up tab ?i ?m ?p ?o ?r ?t ?  ?p ?d ?b ?  ?\; ?  ?p ?d ?b ?. ?s ?e ?t ?_ ?t ?r ?a ?c ?e ?( ?)])

;;(define-key py-mode-map (kbd "C-c b") 'write-pdb-set-trace)
(global-set-key "\C-c\C-b" 'write-pdb-set-trace)

;;(fset 'write-import-prettify
;;      [?f ?r ?o ?m ?  ?D ?a ?t ?a ?T ?y ?p ?e ?s ?. ?P ?r ?e ?t ?t ?y ?  ?i ?m ?p ?o ?r ?t ?  ?p ?r ?e ?t ?t ?i ?f ?y ?  ?a ?s ?  ?P return])

;;(global-set-key (kbd "C-c p") 'write-import-prettify)

;;(fset 'comments-to-logger
;;      [?\C-s ?# ?# ?\C-m left left delete delete tab ?l ?o ?g ?g ?e ?r ?( ?" end ?" ?)])

;;(define-key py-mode-map (kbd "C-c l") 'comments-to-logger)
;; no need, we have C-x C-n
;;(define-key py-mode-map "\C-c\C-n"   'new-frame)


(fset 'print-docstring
      [home ?p ?r ?i ?n ?t ?(  end ?. ?_ ?_ ?d ?o ?c ?_ ?_ ?) return])

(global-set-key "\M-d"   'print-docstring)

(global-set-key (kbd "<M-SPC>") 'w32-menu-bar-open)

(provide 'user-keys)


