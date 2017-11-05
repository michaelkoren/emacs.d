
(require 'compiling)
(require 'commenting)



(packages-manager-load-packages (concat CONFIGURATION-PATH "/development")
				(list
				 "source-browse"
				 "source-control-management"
				 "c"
                                 "java"
				 "python"
				 "ruby"
				 "lisp"
				 ))


; I hate tabs!
(setq-default indent-tabs-mode nil)

(setq show-paren-style 'expression)
(setq show-paren-delay 0)
(show-paren-mode)

