:

;;Do no show startup screen
;;(setq inhibit-startup-screen t)

;;Emacs custom config file
(setq custom-file "~/.emacs.d/custom.el")
(load-file custom-file)

;;Disable toolbar, scroll bar and menu bar.
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;;Highlight current line
(global-hl-line-mode t)

;;Enable line numbers
(global-linum-mode t)

;;Disable startup message
(setq inhibit-startup-message t)


;;Packagfe config
(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

;;Theme

(use-package doom-themes :ensure t
  :config
  (setq doom-themes-enable-bold nil doom-themes-enable-italic nil)
  (load-theme 'doom-one t))

;;Auto completion
(use-package company :ensure t)

;;Git
(use-package magit :ensure t)


;;Project

(use-package projectile :ensure t
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

;;Dashboard
(use-package dashboard :ensure t
  :config
  (dashboard-setup-startup-hook)
  :init
  (setq dashboard-projects-backend 'projectile)
  (setq dashboard-items '((recents . 5)
			 
			  (projects . 5)
			  )))
			               
;;Slime
(use-package slime :ensure t
  :config
  (setq inferior-lisp-program "/usr/bin/sbcl"))


;;Elixir
(use-package elixir-mode :ensure t)
(use-package alchemist :ensure t)
