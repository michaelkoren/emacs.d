(require 'pymacs)

(setq pymacs-load-path (list 
			(expand-file-name (concat CONFIGURATION-PATH 
						  "/development/python/pymacs/modules/"))))
(pymacs-load "pyfuncs" "pyfuncs-")
