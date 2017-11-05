(require 'macros-saver)

;; Macros


(global-set-key [(control f10)] 'start-kbd-macro)
(global-set-key [(meta f10)] 'end-kbd-macro)

;;(global-set-key [(control f11)] 'name-last-kbd-macro)
;;(global-set-key [(meta f11)] 'edit-named-kbd-macro)

(global-set-key [f11] 'name-last-kbd-macro)
(global-set-key [(shift f11)] 'edit-named-kbd-macro)

(global-set-key [(control f11)] 'save-last-kbd-macro-as)
(global-set-key [(control meta f11)] 'global-set-save-key)

;;(global-set-key [(control f12)] 'call-last-kbd-macro)
;;(global-set-key [(meta f12)] 'edit-last-kbd-macro)

(global-set-key [f12] 'call-last-kbd-macro)
(global-set-key [(shift f12)] 'edit-last-kbd-macro)

