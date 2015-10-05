(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; packages
(defvar my-packages '(
                      ido
                      yasnippet
                      zenburn-theme
                      org
                      auto-complete
                      rainbow-delimiters
                      paredit
                      clojure-mode
                      projectile
                      cider
                      magit
                      swift-mode
                      thrift
                      protobuf-mode)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


;; Load paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d/hs"))

;; Configs
(require 'hs-generic)
(require 'hs-ido)
(require 'hs-ibuffer)
(require 'hs-custom)
(require 'hs-recentf)
(require 'hs-clojure)
(require 'hs-org)


;; Autocomplete
(require 'auto-complete-config)
(ac-config-default)


; start server
(server-start)
(message "loaded init.el")

(put 'erase-buffer 'disabled nil)
