(add-hook 'js-mode-hook
					(lambda ()
						(setq indent-tabs-mode t
									js-indent-level 2
									tab-width 2)))

(provide 'hs-javascript)

