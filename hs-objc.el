(setq auto-mode-alist
      (cons '("\\.m$" . objc-mode) auto-mode-alist))

(defun objc-indent-settings ()
  (setq tab-width 4
	standard-indent 4
	c-basic-offset 4
	indent-tabs-mode 1))

(add-hook 'objc-mode-hook 'objc-indent-settings)
(add-hook 'objc-mode-hook '(lambda () (paredit-mode t)))

(provide 'hs-objc)

