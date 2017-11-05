

(packages-manager-load-packages (concat CONFIGURATION-PATH "/development/python")
				(list
				 "pymacs"
				 ))

(require 'python-mode)
(if (require 'ipython "ipython" t)
    t
  (warn "package <ipython> is missing use apt-get ipython to install"))
(require 'py-ext)



(when (load "flymake" t)
      (defun flymake-pylint-init ()
        (let* ((temp-file (flymake-init-create-temp-buffer-copy
                           'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
          (list "epylint" (list local-file))))
      (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init)))


(define-key py-mode-map (kbd "<C-SPC>") 'py-complete)



; This might be more interesting, but need to install something
; called pyflakes first! (in the future)
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
     ; Make sure it's not a remote buffer or flymake would not work
     (when (not (subsetp (list (current-buffer)) (tramp-list-remote-buffers)))
      (let* ((temp-file (flymake-init-create-temp-buffer-copy
                         'flymake-create-temp-inplace))
             (local-file (file-relative-name
                          temp-file
                          (file-name-directory buffer-file-name))))
        (list "pyflakes" (list local-file)))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init)))

(setq flymake-python-pyflakes-executable "flake8")
