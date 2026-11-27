;; -*- lexical-binding: t -*-
;; Easy project management and file management

(use-package
  projectile

  :ensure t

  :init
  (projectile-mode 1)

  :config
  (setq projectile-completion-system 'default)
  (setq projectile-require-project-root nil)
  (setq projectile-mode-line-lighter "P")
  (setq projectile-indexing-method 'alien)
  (setq projectile-enable-caching nil)

  ;; TODO: Keybindings
  :bind
  (("C-c p" . projectile-command-map))

  :diminish
  projectile-mode

  ;; Add more
  )


(provide 'setup__projectile)
