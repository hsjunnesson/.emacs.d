;; Load paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))


;; melpa
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)


;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(setq
 el-get-sources
 '(el-get
    clojure-mode
    rainbow-delimiters
    paredit
;;   magit
   (:name clojure-test-mode
           :repo ("ELPA" . "http://marmalade-repo.org/packages/")
           :type elpa)
   ))

(setq el-get-packages
      (mapcar 'el-get-source-name el-get-sources))

(el-get 'sync el-get-packages)


;; Configs
(require 'hs-generic)
(require 'hs-ido)
(require 'hs-ibuffer)
(require 'hs-custom)
(require 'hs-recentf)
(require 'hs-clojure)
;;(require 'hs-magit)

(require 'thrift-mode)


; start server
(server-start)
(message "loaded init.el")

(put 'erase-buffer 'disabled nil)
