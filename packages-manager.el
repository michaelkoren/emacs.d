
(defun packages-manager-load-package (configuration-directory package)
  (let* ((package-load-path (expand-file-name (concat configuration-directory
						      "/"  package "/_init.el")))
	 (package-dir-path (file-name-directory package-load-path)))
    (setq load-path (cons package-dir-path load-path))
    (load-file package-load-path)))

(defun packages-manager-load-packages (configuration-directory packages)
  (let ((packages-head packages))
    (while packages-head
      (packages-manager-load-package configuration-directory (car packages-head))
      (setq packages-head (cdr packages-head)))))

(provide 'packages-manager)
