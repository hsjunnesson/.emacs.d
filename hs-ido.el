(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(setq ido-save-directory-list-file "~/.emacs.d/.ido.last")
(setq ido-use-filename-at-point 'nil)
(setq ido-show-dot-for-dired nil)

(defun recentf-ido-find-file ()
  "Find a recent file using Ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))


(defun ido-hs-keys ()
  "Add my keybindings for ido."
  (define-key ido-completion-map "\C-w" 'ido-delete-backward-word-updir))
  
(add-hook 'ido-setup-hook 'ido-hs-keys)

(global-set-key (kbd "C-x f") 'recentf-ido-find-file)

(provide 'hs-ido)
