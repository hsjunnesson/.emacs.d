;; Hippie
(global-set-key (kbd "M-/") 'hippie-expand)


;; hippie expand slime symbol
(defun he-slime-symbol-beg ()
  (let ((p
	 (slime-symbol-start-pos)))
    p))

(defun try-expand-slime-symbol (old)
  (unless  old
    (he-init-string (he-slime-symbol-beg) (point))
    (setq he-expand-list (sort
			  (car (slime-contextual-completions (slime-symbol-start-pos) (slime-symbol-end-pos))) 'string-lessp)))
  (while (and he-expand-list
	      (he-string-member (car he-expand-list) he-tried-table))
    (setq he-expand-list (cdr he-expand-list)))
  (if (null he-expand-list)
      (progn
	(when old (he-reset-string))
	())
    (he-substitute-string (car he-expand-list))
    (setq he-expand-list (cdr he-expand-list))
    t))


(setq hippie-expand-dabbrev-as-symbol t)
(setq hippie-expand-try-functions-list
      '(yas/hippie-try-expand
        try-expand-dabbrev-visible
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name
        try-complete-file-name-partially
	try-expand-slime-symbol
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol
        ))



(provide 'hs-hippie)
