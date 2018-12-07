(require 'util)

(setq projectile-completion-system 'ido)
(setq projectile-require-project-root nil)
(setq projectile-mode-line-lighter "P")

(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'setup--projectile)
