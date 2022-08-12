(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq x-super-keysym 'meta)
(load-theme 'gruber-darker t)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(set-face-attribute 'default nil :height 300)

(add-to-list 'load-path "~/rust-mode/")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(use-package company-tabnine :ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(flycheck use-package racer gruber-darker-theme company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
