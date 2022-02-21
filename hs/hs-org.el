(require 'org-install)
(require 'ob-tangle)

(add-hook 'org-mode-hook 'auto-fill-mode)

(setq org-capture-templates '(("t" "Todo [inbox]" entry
                               (file+headline "C:/Users/hans.sjunnesson/Dropbox/org/inbox.org" "Tasks")
                               "* TODO %i%?")
                              ("T" "Tickler" entry
                               (file+headline "C:/Users/hans.sjunnesson/Dropbox/org/tickler.org" "Tickler")
                               "* %i%? \n %U")))

(setq org-refile-targets '(("C:/Users/hans.sjunnesson/Dropbox/org/gtd.org" :maxlevel . 3)
                           ("C:/Users/hans.sjunnesson/Dropbox/org/someday.org" :level . 1)
                           ("C:/Users/hans.sjunnesson/Dropbox/org/tickler.org" :maxlevel . 2)))

(setq org-agenda-custom-commands 
      '(("o" "At the office" tags-todo "@office"
         ((org-agenda-overriding-header "Office")))))

(setq org-plantuml-jar-path (expand-file-name "C:/Users/hans.sjunnesson/Dropbox/org/plantuml-1.2022.1.jar"))
(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
(org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))

(provide 'hs-org)
