(use-package
 paredit

 :ensure t

 :init
 (add-hook 'prog-mode-hook #'paredit-mode)

 :diminish
 paredit-mode)

(provide 'setup__paredit)
