;;; pylint-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (pylint-add-menu-items pylint-add-key-bindings
;;;;;;  pylint pylint-insert-ignore-comment) "pylint" "pylint.el"
;;;;;;  (22275 30976))
;;; Generated autoloads from pylint.el

(autoload 'pylint-insert-ignore-comment "pylint" "\
Insert a comment like \"# pylint: disable=msg1,msg2,...\".

This command repeatedly uses `completing-read' to match known
messages, and ultimately inserts a comma-separated list of all
the selected messages.

With prefix argument, only insert a comma-separated list (for
appending to an existing list).

\(fn &optional ARG)" t nil)

(autoload 'pylint "pylint" "\
Run PYLINT, and collect output in a buffer, much like `compile'.

While pylint runs asynchronously, you can use \\[next-error] (M-x next-error),
or \\<pylint-mode-map>\\[compile-goto-error] in the grep output buffer, to go to the lines where pylint found matches.

\\{pylint-mode-map}

\(fn)" t nil)

(autoload 'pylint-add-key-bindings "pylint" "\
Not documented

\(fn)" nil nil)

(autoload 'pylint-add-menu-items "pylint" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("pylint-pkg.el") (22275 30976 767950))

;;;***

(provide 'pylint-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pylint-autoloads.el ends here
