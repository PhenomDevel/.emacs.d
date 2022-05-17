;; Easy project management and file management

(use-package
  projectile

  :ensure t

  :init
  (projectile-global-mode t)

  :config
  (setq projectile-completion-system 'ido)
  (setq projectile-require-project-root nil)
  (setq projectile-mode-line-lighter "P")
  (setq projectile-indexing-method 'native)

  ;; TODO: Keybindings
  :bind
  (("C-c p" . projectile-command-map))

  :diminish
  projectile-mode

  ;; Add more
  )


(provide 'setup__projectile)
