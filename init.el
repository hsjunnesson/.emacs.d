(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository

(add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)

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

;; Cask
;;(require 'cask "~/.cask/cask.el")
;;(cask-initialize)

;; Load paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d/hs"))

;; Configs
(require 'hs-generic)
(require 'hs-ido)
(require 'hs-ibuffer)
(require 'hs-custom)
(require 'hs-recentf)
(require 'hs-clojure)
(require 'hs-lua)
(require 'hs-org)
(require 'hs-javascript)
(require 'wolfram)

;; Autocomplete
(require 'auto-complete-config)
(ac-config-default)

;; start server
(server-start)
(message "loaded init.el")

(put 'erase-buffer 'disabled nil)

