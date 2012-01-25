;; Hide leading stars face
(setq org-hide-leading-stars nil)
(custom-set-faces
 '(org-hide ((((background light)) (:foreground "dim gray"))
             (((background dark)) (:foreground "dim gray")))))


(set-variable 'org-export-html-style-include-default nil)

(set-variable 'org-export-html-style
              "<link rel=\"stylesheet\" type=\"text/css\" href=\"/Users/hanssjunnesson/.emacs.d/org-mode.css\" />")

(set-variable 'org-export-with-section-numbers nil)

(provide 'hs-org)
