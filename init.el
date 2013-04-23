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

;; melpa
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; local sources
(setq el-get-sources
      '(
	(:name mew
	       :type git
	       :url "https://github.com/kazu-yamamoto/Mew.git"
	       :features mew
	       :after (progn (require 'hs-mew)))
	(:name framemove
	       :type http
	       :features framemove
	       :url "http://www.emacswiki.org/emacs/download/framemove.el"
	       :after (progn (require 'hs-framemove)))
	(:name restclient
	       :type git
	       :features restclient
	       :url "https://github.com/pashky/restclient.el.git")
	(:name json-mode
	       :type git
	       :features json-mode
	       :url "https://github.com/joshwnj/json-mode")
	(:name scala-mode2
	       :type git
	       :features scala-mode2
	       :url "https://github.com/hvesalai/scala-mode2")
	(:name dash-at-point
	       :type git
	       :features dash-at-point
	       :url "https://github.com/Kapeli/dash-at-point")
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
     zenburn-theme
     highlight-parentheses
     highlight-indentation
     magit
     mo-git-blame
     paredit
     swank-clojure
     clojure-mode
     protobuf-mode
     org-mode
     babel
     calfw
     yasnippet
     twittering-mode
     git-emacs
     multi-term
     lua-mode
     nrepl
     )
   (mapcar 'el-get-source-name el-get-sources)))


(el-get 'sync hs:el-get-packages)


;; PATH
(defun chomp (str)
  "Chomp leading and tailing whitespace from STR."
  (while (string-match "\\`\n+\\|^\\s-+\\|\\s-+$\\|\n+\\'"
		       str)
    (setq str (replace-match "" t t str)))
  str)

(let* ((path-prefix "PATH{")
       (echo-env (concat "$SHELL --login -i -c 'echo " path-prefix "$PATH'"))
       (shell-output (shell-command-to-string echo-env))
       (path-from-shell
	(split-string
	 (substring shell-output
		    (+ (length path-prefix)
		       (string-match path-prefix
				     shell-output)))
	 path-separator)))
  
  (setq path-from-shell (delete-dups (append (mapcar 'chomp path-from-shell) exec-path)))
  (setenv "PATH" (mapconcat 'identity path-from-shell path-separator))
  (setq exec-path path-from-shell))

(require 'hs-mac)
(require 'hs-lisp)
(require 'hs-color)
(require 'hs-recentf)
(require 'hs-ido)
(require 'hs-objc)
(require 'hs-org)
(require 'hs-hippie)
(require 'hs-calfw)
(require 'hs-ibuffer)
(require 'hs-magit)
(require 'hs-c)
(require 'hs-scala)

(require 'hs-custom)

;; Wolfram hax
(add-to-list 'load-path "~/.emacs.d/wolfram.el")
(require 'wolfram)

;; Add thrift.el
(require 'thrift-mode)


; start server
(server-start)
(message "loaded init.el")

(put 'erase-buffer 'disabled nil)
