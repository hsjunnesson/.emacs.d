(setq custom-file "~/.emacs.d/hs-custom.el")


;; Mac keyboard
(setq mac-option-modifier 'none)
(setq mac-command-modifier 'meta)


;; utf-8
(define-coding-system-alias 'UTF-8 'utf-8)
(define-coding-system-alias 'utf8 'utf-8)


;; Tabs
(setq tab-stop-list (number-sequence 2 120 2))
(define-key text-mode-map (kbd "<tab>") 'tab-to-tab-stop)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-type (quote box) t)
 '(custom-safe-themes (quote ("fc6e906a0e6ead5747ab2e7c5838166f7350b958d82e410257aeeb2820e8a07a" default)))
 '(indent-tabs-mode nil)
 '(org-agenda-files (quote ("~/Dropbox/org/work.org")))
 '(org-babel-load-languages (quote ((clojure . t) (ditaa . t) (dot . t) (js . t))))
 '(org-confirm-babel-evaluate nil)
 '(org-ditaa-jar-path "~/Dropbox/org/ditaa0_9.jar")
 '(org-export-html-style "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///Users/hanssjunnesson/.emacs.d/org-mode.css\" />")
 '(truncate-lines t)
 '(visual-line-mode nil t)
 '(tab-width 2))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#3f3f3f" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "adobe" :family "Source Code Pro"))))
 '(highlight ((t (:background "#333333"))))
 '(org-hide ((((background light)) (:foreground "dim gray")) (((background dark)) (:foreground "dim gray"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "light sky blue"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "medium spring green"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "gold"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "light sky blue"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "medium spring green"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "gold"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "light sky blue"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "medium spring green")))))


(provide 'hs-custom)
