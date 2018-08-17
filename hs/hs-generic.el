(set-variable 'inhibit-startup-message t)

(set-variable 'user-mail-address "hans\.sjunnesson@gmail\.com")
(set-variable 'user-full-name "Hans Sjunnesson")

;; disable audible bell
(setq visible-bell t)



;; Coding system
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")
(fset 'yes-or-no-p 'y-or-n-p)


;; Mouse-scroll amount
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control))))


;; Frame-title shows filename
(setq frame-title-format '(multiple-frames "%b" "%b"))


;; Turn off toolbar
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


;; Unbind annoyying key
;;(global-unset-key (kbd "C-x C-o"))


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

