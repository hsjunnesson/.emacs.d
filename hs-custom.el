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
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 300 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(cursor-type (quote box))
 '(default-frame-alist (quote ((fringe) (right-fringe) (left-fringe . 1) (internal-border-width . 0) (vertical-scroll-bars . right) (cursor-type . box) (menu-bar-lines . 1) (tool-bar-lines . 0) (background-color . "#121212") (background-mode . dark) (border-color . "#888a85") (foreground-color . "#eeeeec") (cursor-color . "#888888") (mouse-color . "#333333"))))
 '(ns-alternate-modifier (quote none))
 '(ns-tool-bar-display-mode (quote both) t)
 '(ns-tool-bar-size-mode (quote regular) t)
 '(org-agenda-files (quote ("~/Dropbox/work.org")))
 '(org-clock-idle-time 10)
 '(truncate-lines t)
 '(visual-line-mode nil t)
 '(wolfram-alpha-app-id "2JTYAL-2XAYU3XVE3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight ((t (:background "#333333")))))

(provide 'hs-custom)

