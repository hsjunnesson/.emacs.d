;; Packages
(require 'package)

(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(mapc
 (lambda (package)
   (or (package-installed-p package)
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package))))
 '(clojure-mode
   clojure-test-mode
   nrepl))


;; Load paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

(require 'hs-generic)
(require 'hs-ido)
(require 'hs-ibuffer)
(require 'hs-custom)
(require 'hs-recentf)

(require 'thrift-mode)


; start server
(server-start)
(message "loaded init.el")

(put 'erase-buffer 'disabled nil)
