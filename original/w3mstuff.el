(setq browse-url-browser-function 'brose-url-w3m-emacs)
(setq w3m-use-cookies 1) ;; emable cookies

(defun visit-location ()
  (interactive)
  (w3m-goto-url-new-session "http://google.com" ))

