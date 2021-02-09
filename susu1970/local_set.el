;关闭自动备份（产生'~'类文件）、自动保存（产生'#'类文件）
(setq make-backup-files nil)
(setq auto-save-default nil)
;隐藏菜单栏工具栏启动Logo
(tool-bar-mode 0)
(menu-bar-mode 0)
(setq inhibit-startup-message t)
;高亮显示当前行
(global-hl-line-mode 1)
(global-linum-mode 1)
;时间
(display-time-mode 1) ;; 常显
(setq display-time-24hr-format t) ;;格式
(setq display-time-day-and-date t) ;;显示时间、星期、日期

;;括号匹配
(electric-pair-mode 1)
(setq electric-pair-pairs
      '(
		(?\" . ?\")  ;; 添加双引号补齐
		(?\{ . ?\})  ;; 添加大括号补齐
		(?\' . ?\')
		(?\[ . ?\]))) ;; 添加单引号补齐
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;设置问答提示为 y-or-n,而不是yes-or-no
(fset 'yes-or-no-p 'y-or-n-p)
;;支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)
;;可以递归的使用 minibuffer
(setq enable-recursive-minibuffers t)
;;默认工作路径
(setq default-directory "~/susu1970/")
;;gdb
(setq gdb-many-windows t)
;;org-mode
(add-hook 'org-mode-hook (lambda () (setq toggle-truncate-lines nil)))

;;proxy
(setq url-gateway-method 'socks)
(setq socks-server '("Default server" "127.0.0.1" 1080 5))
(setq socks-noproxy '("127.0.0.1"))

;;hotkey
;;goto-line
(global-set-key (kbd "s-l") 'goto-line)
;;code-block
(add-hook 'prog-mode-hook 'hs-minor-mode)
(global-set-key (kbd "s-h") 'hs-hide-block)
(global-set-key (kbd "s-s") 'hs-show-block)
(global-set-key (kbd "s-S") 'hs-show-all)
(global-set-key (kbd "s-H") 'hs-hide-all)
(global-set-key (kbd "s-t") 'hs-toggle-hiding)
;;project
(global-set-key (kbd "s-p") 'project-find-file)
(global-set-key (kbd "s-P") 'project-search)



(provide 'local_set)
