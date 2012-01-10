(setq custom-file "~/.emacs.d/hs-custom.el")


;; Mac keyboard
(setq mac-option-modifier 'none)
(setq mac-command-modifier 'meta)


;; mo-git-blame
(global-set-key (kbd "C-c C-b c") 'mo-git-blame-current)
(global-set-key (kbd "C-c C-b f") 'mo-git-blame-file)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/Dropbox/work.org")))
 '(org-clock-idle-time 10)
 '(truncate-lines t)
 '(wolfram-alpha-app-id "2JTYAL-2XAYU3XVE3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight ((t (:background "#333333")))))

(provide 'hs-custom)

