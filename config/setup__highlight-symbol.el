(use-package
 highlight-symbol

 :ensure t

 :config
 (add-hook 'prog-mode-hook 'highlight-symbol-mode)
 (setq highlight-symbol-on-navigation-p t)
 (setq highlight-symbol-idle-delay 1.5)

 )

(provide 'setup__highlight-symbol)
