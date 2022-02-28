(set-variable 'inhibit-startup-message t)

(set-variable 'user-mail-address "hans\.sjunnesson@gmail\.com")
(set-variable 'user-full-name "Hans Sjunnesson")

;; disable audible bell
(setq visible-bell t)


;; Mac
(setq mac-option-modifier 'none)
(setq mac-command-modifier 'meta)
(setq visible-bell nil)
(setq ring-bell-function (lambda ()
                           (invert-face 'mode-line)
                           (run-with-timer 0.1 nil 'invert-face 'mode-line)))

;; Time locale
(setq system-time-locale "C")


;; Tabs
(setq custom-tab-width 4)
(defun disable-tabs() (setq indent-tabs-mode nil))
(defun enable-tabs()
	(local-set-key (kbd "TAB") `tab-to-tab-stop)
	(setq indent-tabs-mode t)
	(setq tab-width custom-tab-width))

(add-hook 'prog-mode-hook 'enable-tabs)
(add-hook 'lisp-mode-hook 'disable-tabs)
(add-hook 'emacs-lisp-mode 'disable-tabs)
(add-hook 'org-mode-hook 'disable-tabs)

(setq-default c-basic-offset custom-tab-width)

(setq electric-indent-inhibit t)
(setq backward-delete-char-untabify-method 'hungry)
(setq whitespace-style '(face tabs tab-mark trailing))
(custom-set-faces
 '(whitespace-tab ((t (:foreground "#636363")))))
(setq whitespace-display-mappings
			'((tab-mark 9 [124 9] [92 9]))) ; 124 is the ascii ID for '\|'
(global-whitespace-mode) ; Enable whitespace mode everywhere


;; Coding system
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")
(fset 'yes-or-no-p 'y-or-n-p)
(define-coding-system-alias 'UTF-8 'utf-8)
(define-coding-system-alias 'utf8 'utf-8)


;; Mouse-scroll amount
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control))))


;; Frame-title shows filename
(setq frame-title-format '(multiple-frames "%b" "%b"))


;; Turn off menubar and toolbar
(menu-bar-mode -1)
(tool-bar-mode -1)


;; Keybind moving window focus
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

(global-set-key (kbd "C-x <C-up>") 'windmove-up)
(global-set-key (kbd "C-x <C-down>") 'windmove-down)
(global-set-key (kbd "C-x <C-left>") 'windmove-left)
(global-set-key (kbd "C-x <C-right>") 'windmove-right)

(global-set-key (kbd "C-x C-o") 'other-window)


;; Misc keybinds
(global-set-key (kbd "C-6") 'imenu)
(global-set-key (kbd "C-x C-d") 'dired)
(global-set-key (kbd "C-c c") 'org-capture)


;; Indicate empty lines
(setq-default indicate-empty-lines 1)


;; Line numbering
(line-number-mode 1)
(column-number-mode 1)


;; PATH
(defun chomp (str)
  "Chomp leading and tailing whitespace from STR."
  (while (string-match "\\`\n+\\|^\\s-+\\|\\s-+$\\|\n+\\'"
		       str)
    (setq str (replace-match "" t t str)))
  str)

;; (let* ((path-prefix "PATH{")
;;        (echo-env (concat "$SHELL --login -i -c 'echo " path-prefix "$PATH'"))
;;        (shell-output (shell-command-to-string echo-env))
;;        (path-from-shell
;; 	(split-string
;; 	 (substring shell-output
;; 		    (+ (length path-prefix)
;; 		       (string-match path-prefix
;; 				     shell-output)))
;; 	 path-separator)))

;;   (setq path-from-shell (delete-dups (append (mapcar 'chomp path-from-shell) exec-path)))
;;   (setenv "PATH" (mapconcat 'identity path-from-shell path-separator))
;;   (setq exec-path path-from-shell))


(provide 'hs-generic)

