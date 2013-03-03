(setq custom-file "~/.emacs.d/hs-custom.el")


;; Mac keyboard
(setq mac-option-modifier 'none)
(setq mac-command-modifier 'meta)


;; mo-git-blame
(global-set-key (kbd "C-c C-b c") 'mo-git-blame-current)
(global-set-key (kbd "C-c C-b f") 'mo-git-blame-file)


;; utf-8
(define-coding-system-alias 'UTF-8 'utf-8)
(define-coding-system-alias 'utf8 'utf-8)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-type (quote box) t)
 '(custom-safe-themes (quote ("d6a00ef5e53adf9b6fe417d2b4404895f26210c52bb8716971be106550cea257" "71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" default)))
 '(default-frame-alist (quote ((fringe) (right-fringe) (left-fringe . 1) (internal-border-width . 0) (vertical-scroll-bars . right) (cursor-type . box) (menu-bar-lines . 1) (tool-bar-lines . 0) (background-color . "#121212") (background-mode . dark) (border-color . "#888a85") (foreground-color . "#eeeeec") (cursor-color . "#888888") (mouse-color . "#333333"))))
 '(ispell-program-name "/usr/local/bin/aspell")
 '(lua-default-application "/usr/local/bin/lua")
 '(markdown-command "/usr/local/bin/markdown")
 '(ns-alternate-modifier (quote none))
 '(ns-tool-bar-display-mode (quote both) t)
 '(ns-tool-bar-size-mode (quote regular) t)
 '(org-agenda-custom-commands (quote (("d" todo "DELEGATED" nil) ("c" todo "DONE|DEFERRED|CANCELLED" nil) ("w" todo "WAITING" nil) ("W" agenda "" ((org-agenda-ndays 21))) ("A" agenda "" ((org-agenda-skip-function (lambda nil (org-agenda-skip-entry-if (quote notregexp) "\\=.*\\[#A\\]"))) (org-agenda-ndays 1) (org-agenda-overriding-header "Today's Priority #A tasks: "))) ("u" alltodo "" ((org-agenda-skip-function (lambda nil (org-agenda-skip-entry-if (quote scheduled) (quote deadline) (quote regexp) "
]+>"))) (org-agenda-overriding-header "Unscheduled TODO entries: "))))))
 '(org-agenda-files (quote ("~/Dropbox/org/ving.org" "~/Dropbox/org/lararnas.org" "~/Dropbox/org/pwc.org" "~/Dropbox/org/comviq.org" "~/Dropbox/org/pickmonks.org" "~/Dropbox/org/todo.org" "~/Dropbox/org/todo.org" "~/Dropbox/org/tradera.org" "~/Dropbox/org/ikano.org" "~/Dropbox/org/work.org" "~/Dropbox/org/volvo.org" "~/Dropbox/org/tradera.org" "~/Dropbox/org/work.org" "~/Dropbox/org/foretagarna.org")))
 '(org-agenda-ndays 7)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-start-on-weekday nil)
 '(org-clock-idle-time 10)
 '(org-deadline-warning-days 14)
 '(org-default-notes-file "~/Dropbox/org/notes.org")
 '(org-directory "~/Dropbox/org")
 '(org-export-htmlize-output-type (quote css))
 '(org-fast-tag-selection-single-key (quote expert))
 '(org-mobile-directory "~/Dropbox/MobileOrg")
 '(org-mobile-inbox-for-pull "~/Dropbox/org/flagged.org")
 '(org-modules (quote (org-bbdb org-bibtex org-docview org-gnus org-info org-jsinfo org-irc org-mew org-mhe org-rmail org-vm org-wl org-w3m org-collector)))
 '(org-plantuml-jar-path "~/Dropbox/org/plantuml.jar")
 '(org-remember-store-without-prompt t)
 '(org-remember-templates (quote ((116 "* TODO %?
  %u" "~/Dropbox/org/todo.org" "Tasks") (110 "* %u %?" "~/Dropbox/org/notes.org" "Notes"))))
 '(org-reverse-note-order t)
 '(remember-annotation-functions (quote (org-remember-annotation)))
 '(remember-handler-functions (quote (org-remember-handler)))
 '(send-mail-function (quote mailclient-send-it))
 '(sentence-end-double-space nil)
 '(truncate-lines t)
 '(visual-line-mode nil t)
 '(wolfram-alpha-app-id "2JTYAL-2XAYU3XVE3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#3f3f3f" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "apple" :family "source_code_pro"))))
 '(highlight ((t (:background "#333333"))))
 '(org-hide ((((background light)) (:foreground "dim gray")) (((background dark)) (:foreground "dim gray")))))

(provide 'hs-custom)

