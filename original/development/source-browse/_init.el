
;grep
(setq grep-find-history '("find . -type f -print0 |xargs -0 -e grep -n"))
(global-set-key [(control f9)] 'grep-find)


;; cscope
(require 'xcscope)
(setq cscope-do-not-update-database t)
(define-key global-map [(meta f9)]  'cscope-find-this-symbol)
(define-key global-map [(control /)]  'cscope-find-global-definition)
(define-key global-map [(control \?)]  'cscope-pop-mark)
