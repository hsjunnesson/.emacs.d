;; Load paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;; (url-retrieve
;;  "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
;;  (lambda (s)
;;    (end-of-buffer)
;;    (eval-print-last-sexp)))


(require 'hs-generic)


;; el-git
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

;; local sources
(setq el-get-sources
      '((:name mew
	       :type git
	       :url "https://github.com/kazu-yamamoto/Mew.git"
	       :features mew
	       :after (lambda() (require 'hs-mew)))
	))

(setq
  hs:el-get-packages
  (append
   '(el-get
     ruby-mode
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
     calfw
     yasnippet
     twittering-mode
     )
   (mapcar 'el-get-source-name el-get-sources)))


(el-get 'sync hs:el-get-packages)


(require 'hs-mac)
(require 'hs-lisp)
(require 'hs-color)
(require 'hs-recentf)
(require 'hs-ido)
(require 'hs-objc)
(require 'hs-org)
(require 'hs-hippie)
(require 'hs-calfw)

(require 'hs-custom)

;; Wolfram hax
(add-to-list 'load-path "~/.emacs.d/wolfram.el")
(require 'wolfram)


; start server
(server-start)
(message "loaded init.el")

