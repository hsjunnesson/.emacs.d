;; iBuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

(eval-after-load "ibuf-ext"
  '(define-ibuffer-filter filename
       "Toggle current view to buffers with file or directory name matching QUALIFIER."
     (:description "filename"
		   :reader (read-from-minibuffer "Filter by file/directory name (regexp): "))
     (ibuffer-awhen (or (buffer-local-value 'buffer-file-name buf)
			(buffer-local-value 'dired-directory buf))
		    (string-match qualifier it))))

(setq ibuffer-saved-filter-groups
     '(("home"
        ("emacs-config" (or (filename . ".emacs.d")
                            (filename . "emacs-config")))
        ("org-mode" (or (mode . org-mode)
			(name . "Org Clock")))
	("monterosa" (filename . "monterosa"))
	("msg" (or (mode . rcirc-mode)
		   (mode . twittering-mode)
		   (name . "jabber")))
	("files" (filename . ".+"))
	("help" (or (name . "\*Help\*")
		    (name . "\*Apropos\*")
		    (name . "\*info\*")
		    (mode . "Help")))
	("shells" (or (mode . shell-mode)
		      (mode . eshell-mode)))
	("workspace" (filename . "workspace"))
	("svn" (name . "\*svn"))
	("git" (or (name . "\*git")
		   (mode . magit-status-mode)))
	("clojure" (or (name . "\*slime-repl")
		       (mode . clojure-mode)))
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

