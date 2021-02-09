(defvar beta t
  "beta tag")
(defvar emacs-root-dir "~/.emacs.d/"
  "the path of '.emacs.d' ")
(defvar global-root-dir emacs-root-dir
  "the path of 'global'")
(defvar beta-root-dir (concat emacs-root-dir "beta/")
  "the path of 'beta'")
(defvar susu1970-root-dir (concat emacs-root-dir "susu1970/")
  "the path of 'susu1970'")
(defvar beta-ext-dir (concat beta-root-dir "ext/")
  "the extension path of 'beta'")
(defvar susu1970-ext-dir (concat susu1970-root-dir "ext/")
  "the extension path of 'susu1970'")

(defun loadel(dir el)
  "load el(file) from  dir(directory)"
  (let ((file (concat dir el)))
    (load file)))

;;start package.el with emacs
(require 'package)
;;init repository list
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")
			 ("melpa-stable" . "http://elpa.emacs-china.org/melpa-stable/")
			 ("marmalade" . "http://elpa.emacs-china.org/marmalade/")
			 ("org" . "http://elpa.emacs-china.org/org/")
			 ("sunrise-commander" . "	http://elpa.emacs-china.org/sunrise-commander/")
			 ("user42" . "http://elpa.emacs-china.org/user42/")
			 ))
;;initialize package.el
(package-initialize)

(provide 'global)
