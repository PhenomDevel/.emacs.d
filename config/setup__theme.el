(use-package
 zenburn-theme

 :ensure t

 :config
 (setq custom-safe-themes t) ; Always trust custom themes to prevent warning
 (load-theme 'zenburn))

(provide 'setup__theme)
