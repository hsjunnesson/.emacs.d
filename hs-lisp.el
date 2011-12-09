(dolist (hook '(scheme-mode-hook
		lisp-mode-hook
		emacs-lisp-mode-hook
		clojure-mode-hook))
  (add-hook hook (lambda ()
		   (eldoc-mode t)
                   (paredit-mode t)
                   (highlight-parentheses-mode t))))

(setq parens-require-spaces nil)
(setq show-paren-style 'expression)
(show-paren-mode t)
(set-face-background 'show-paren-match "grey13")

;;(require 'slime)
;;(slime-setup '(slime-repl))

(add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)


(provide 'hs-lisp)
