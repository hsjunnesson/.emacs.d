;; iBuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

(setq ibuffer-saved-filter-groups
     '(("home"
        ("emacs-config" (or (filename . ".emacs.d")
                            (filename . "emacs-config")))
        ("org-mode" (or (mode . org-mode)
			(name . "Org clock")))
	("monterosa" (filename . "monterosa"))
	("msg" (or (mode . rcirc-mode)
		   (mode . twittering-mode)
		   (name . "jabber")))
	("files" (filename . ".+"))
	("help" (or (name . "\*Help\*")
		    (name . "\*Apropos\*")
		    (name . "\*info\*")))
	("dired" (mode . dired-mode))
	("shells" (mode . shell-mode))
	("svn" (name . "\*svn"))
	("git" (or (name . "\*git")
		   (mode . magit-status-mode)))
	 )))


;; Kill all dired buffers
(defun kill-all-dired-buffers()
  "Kill all dired buffers."
  (interactive)
  (save-excursion
    (let((count 0))
      (dolist(buffer (buffer-list))
        (set-buffer buffer)
        (when (equal major-mode 'dired-mode)
          (setq count (1+ count))
          (kill-buffer buffer)))
      (message "Killed %i dired buffer(s)." count ))))


(add-hook 'ibuffer-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "C-g") 'ibuffer-quit)
	     (local-set-key (kbd "C-x C-d") 'kill-all-dired-buffers)
	     (ibuffer-switch-to-saved-filter-groups "home")))

(setq ibuffer-show-empty-filter-groups nil)
(setq ibuffer-expert t)

(provide 'hs-ibuffer)

