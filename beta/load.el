(add-to-list 'load-path beta-root-dir)
(use-package yasnippet
  :config
  (setq yas-snippet-dirs
	(list (concat beta-ext-dir "snippets/")))
  (yas-global-mode 1)
  )

(require 'tmp)

(provide 'load)
