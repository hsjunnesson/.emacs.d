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
 '(cursor-type (quote box) t)
 '(default-frame-alist (quote ((fringe) (right-fringe) (left-fringe . 1) (internal-border-width . 0) (vertical-scroll-bars . right) (cursor-type . box) (menu-bar-lines . 1) (tool-bar-lines . 0) (background-color . "#121212") (background-mode . dark) (border-color . "#888a85") (foreground-color . "#eeeeec") (cursor-color . "#888888") (mouse-color . "#333333"))))
 '(lua-default-application "/usr/local/bin/lua")
 '(markdown-command "/usr/local/bin/markdown")
 '(ns-alternate-modifier (quote none))
 '(ns-tool-bar-display-mode (quote both) t)
 '(ns-tool-bar-size-mode (quote regular) t)
 '(org-agenda-custom-commands (quote (("d" todo "DELEGATED" nil) ("c" todo "DONE|DEFERRED|CANCELLED" nil) ("w" todo "WAITING" nil) ("W" agenda "" ((org-agenda-ndays 21))) ("A" agenda "" ((org-agenda-skip-function (lambda nil (org-agenda-skip-entry-if (quote notregexp) "\\=.*\\[#A\\]"))) (org-agenda-ndays 1) (org-agenda-overriding-header "Today's Priority #A tasks: "))) ("u" alltodo "" ((org-agenda-skip-function (lambda nil (org-agenda-skip-entry-if (quote scheduled) (quote deadline) (quote regexp) "
]+>"))) (org-agenda-overriding-header "Unscheduled TODO entries: "))))))
 '(org-agenda-files (quote ("~/Dropbox/org/org-mode-doc.org" "~/Dropbox/org/pwc.org" "~/Dropbox/org/comviq.org" "~/Dropbox/org/pickmonks.org" "~/Dropbox/org/todo.org_archive" "~/Dropbox/org/todo.org" "~/Dropbox/org/tradera.org" "~/Dropbox/org/ikano.org" "~/Dropbox/org/work.org" "~/Dropbox/org/volvo.org" "~/Dropbox/org/tradera.org_archive" "~/Dropbox/org/work.org_archive" "~/Dropbox/org/foretagarna.org")))
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
 '(highlight ((t (:background "#333333"))))
 '(org-hide ((((background light)) (:foreground "dim gray")) (((background dark)) (:foreground "dim gray")))))

(provide 'hs-custom)

