(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; packages
(defvar my-packages '(
		      ;; starter-kit
		      ;; starter-kit-lisp
		      ;; starter-kit-bindings
                      auto-complete
                      rainbow-delimiters
		      paredit
                      clojure-mode
                      cider
                      magit)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


;; Load paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;; Configs
(require 'hs-generic)
(require 'hs-ido)
(require 'hs-ibuffer)
(require 'hs-custom)
(require 'hs-recentf)
(require 'hs-clojure)
(require 'hs-org)

(require 'thrift-mode)


; start server
(server-start)
(message "loaded init.el")

(put 'erase-buffer 'disabled nil)
