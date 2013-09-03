(require 'git-emacs)
(require 'git-status)


(add-hook 'magit-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "c") 'git-commit)))


(provide 'hs-magit)
