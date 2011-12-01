;; Load paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))


(require 'hs-generic)


;; el-git
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

;; local sources
(setq el-get-sources
      )


(setq
  hs:el-get-packages
  (append
   '(el-get
     ruby-mode
     auto-complete
     yaml-mode
     markdown-mode
     coffee-mode
     undo-tree
     magit
     color-theme
     color-theme-solarized
     color-theme-tango
     color-theme-tango-2
     color-theme-zenburn
     highlight-parentheses
     paredit
     swank-clojure
     clojure-mode
     protobuf-mode
     org-mode
     )
   (mapcar 'el-get-source-name el-get-sources)))


(el-get 'sync hs:el-get-packages)


(require 'hs-mac)
(require 'hs-lisp)
(require 'hs-color)
(require 'hs-recentf)
(require 'hs-ido)


; start server
(server-start)
(message "loaded init.el")

