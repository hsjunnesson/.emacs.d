(defun c-indent-settings ()
  (setq tab-width 4
  	standard-indent 4
	c-basic-offset 4
	indent-tabs-mode 1))

(add-hook 'c-mode-hook 'c-indent-settings)
(add-hook 'c-mode-hook '(lambda ()
			  (add-to-list (make-local-variable 'paredit-space-for-delimiter-predicates)
				       (lambda (_ _) nil))
			  (enable-paredit-mode)))

(add-hook 'c++-mode 'c-indent-settings)
(add-hook 'c++-mode-hook '(lambda ()
			    (add-to-list (make-local-variable 'paredit-space-for-delimiter-predicates)
					 (lambda (_ _) nil))
			    (enable-paredit-mode)))

(provide 'hs-c)

