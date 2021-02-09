;;global
(load "~/.emacs.d/global.el")

;;load susu1970
(loadel susu1970-root-dir "load.el")

;;try load beta
(if beta (loadel beta-root-dir "load.el"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(yasnippet doom-themes rainbow-delimiters highlight-parentheses)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#1E1C31" :foreground "#CBE3E7" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "CTDB" :family "Fira Code"))))
 '(line-number ((t (:inherit default :foreground "magenta" :strike-through nil :underline nil :slant normal :weight normal)))))
