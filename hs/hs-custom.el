(setq custom-file "~/.emacs.d/hs/hs-custom.el")


;; Mac keyboard
(setq mac-option-modifier 'none)
(setq mac-command-modifier 'meta)

;; Time locale
(setq system-time-locale "C")


;; utf-8
(define-coding-system-alias 'UTF-8 'utf-8)
(define-coding-system-alias 'utf8 'utf-8)


;; Tabs
(setq tab-stop-list (number-sequence 2 120 2))
(define-key text-mode-map (kbd "<tab>") 'tab-to-tab-stop)


;; Bell on El Capitano
(setq visible-bell nil)
(setq ring-bell-function (lambda ()
                           (invert-face 'mode-line)
                           (run-with-timer 0.1 nil 'invert-face 'mode-line)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(compilation-scroll-output t)
 '(cursor-type (quote box))
 '(custom-safe-themes
	 (quote
		("599f1561d84229e02807c952919cd9b0fbaa97ace123851df84806b067666332" "a23f169b7909feaa53a0e7c08041aae663ef074fd1618103c09bf022a2ec1ee4" "d9aaff4db65a545989c0976c759a44a16439cac7717f4e58cc01efc771d90449" "38908037082b9fc2e6762961026299d026963e57c726c3bc0b9e66cd0def0926" "fc6e906a0e6ead5747ab2e7c5838166f7350b958d82e410257aeeb2820e8a07a" default)))
 '(indent-tabs-mode t)
 '(inhibit-startup-screen t)
 '(large-file-warning-threshold nil)
 '(lua-default-application "lua")
 '(lua-indent-level 2)
 '(make-backup-files nil)
 '(mouse-wheel-progressive-speed nil)
 '(org-agenda-files (quote ("d:/work.org")))
 '(org-babel-load-languages (quote ((clojure . t) (ditaa . t) (dot . t) (js . t))))
 '(org-confirm-babel-evaluate nil)
 '(org-ditaa-jar-path "~/Dropbox/org/ditaa0_9.jar")
 '(org-export-html-style
	 "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///Users/hanssjunnesson/.emacs.d/org-mode.css\" />")
 '(package-selected-packages
	 (quote
		(tide flx-ido yaml-mode psvn sr-speedbar eide ecb company-lua flycheck lua-mode w3m company-sourcekit company cljdoc cider-eval-sexp-fu zenburn-theme yasnippet thrift swift-mode rainbow-delimiters protobuf-mode projectile paredit magit cider auto-complete)))
 '(revert-without-query (quote (".*")))
 '(scroll-conservatively 1)
 '(scroll-preserve-screen-position t)
 '(tab-width 2)
 '(tags-case-fold-search nil)
 '(tags-revert-without-query t)
 '(truncate-lines t)
 '(visual-line-mode nil t)
 '(wolfram-alpha-app-id "2JTYAL-2XAYU3XVE3"))

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

(global-set-key (kbd "M-.") 'find-tag)
(global-set-key (kbd "C-6") 'imenu)
(global-set-key (kbd "C-x C-d") 'dired)

(provide 'hs-custom)
