(set-variable 'inhibit-startup-message t)
(set-variable 'user-mail-address "hans\.sjunnesson@gmail\.com")
(set-variable 'user-full-name "Hans Sjunnesson")
(setq visible-bell t)                ;; disable audible bell


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
(global-set-key (kbd "C-x C-<up>") 'windmove-up)

(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x C-<down>") 'windmove-down)

(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x C-<right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x C-<left>") 'windmove-left)


;; Indicate empty lines
(setq-default indicate-empty-lines 1)


;; Line numbering
(line-number-mode 1)
(column-number-mode 1)


(provide 'hs-generic)

