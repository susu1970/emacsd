(add-to-list 'load-path beta-root-dir)
(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs
	(list (concat beta-ext-dir "snippets/")))
  (yas-global-mode 1)
  )

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (global-company-mode t)
  (setq-default company-backends
		`(company-elisp
                  (company-yasnippet company-capf company-files)
                  (company-keywords)
                  company-nxml
                  company-css
                  company-clang
                  company-cmake
                  company-semantic))
  
  (setq company-idle-delay 0.2
	company-show-numbers t
	company-tooltip-idle-delay 0.1
	company-minimum-prefix-length 2
	completion-ignore-case t
	company-dabbrev-downcase nil
	company-dabbrev-ignore-case nil
	company-require-match nil
	company-tooltip-align-annotations t
	company-search-regexp-function 'company-search-words-in-any-order-regexp
	
	)
  (add-to-list 'company-begin-commands  'backward-delete-char-untabify)
  (add-to-list 'company-begin-commands  'backward-kill-word)
  )

(use-package company-fuzzy
  :ensure t
  :config
  (setq company-fuzzy-prefix-on-top 1)
  (setq company-fuzzy-show-annotation t)
  (add-hook 'company-mode-hook 'company-fuzzy-mode))

(use-package irony
  :defer t
  :init
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)
  :config
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  )

(use-package company-irony
  :after (irony company)
  :config
  (add-to-list 'company-backends 'company-irony)
  ;;  (add-hook 'irony-mode-hook 'company-irony-mode)
  )

(use-package flycheck
  :config
  (add-hook 'prog-mode-hook 'flycheck-mode)
  )

(use-package multiple-cursors
  :bind (("C->" . mc/mark-next-like-this)
	 ("C-<" . mc/mark-previous-like-this)
	 )
  :config
  (setq mc/insert-numbers-default 1)
  )

(use-package ggtags
  :bind (("s-<return>" . ggtags-find-definition)
	 ("M-<return>" . ggtags-show-definition)
	 ("s--" . ggtags-prev-mark)
	 ("s-=" . ggtags-next-mark)
	 ("s-r" . ggtags-find-reference))
  :config
  (add-hook 'prog-mode-hook 'ggtags-mode)
  )


(require 'tmp)

(provide 'load)
;;; load.el ends here
