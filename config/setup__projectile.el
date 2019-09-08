(use-package
 projectile

 :ensure t

 :init
 (projectile-global-mode t)

 :config
 (setq projectile-completion-system 'ido)
 (setq projectile-require-project-root nil)
 (setq projectile-mode-line-lighter "P")

 :bind
 (("C-c p" . projectile-command-map))

 :diminish
 projectile-mode
 )


(provide 'setup__projectile)
