
(setq highlight-symbol-on-navigation-p t)
(setq highlight-symbol-idle-delay 1.5)

;; highlieght-symbol
(require 'highlight-symbol)

(add-hook 'prog-mode-hook 'highlight-symbol-mode)

(provide 'setup--highlight-symbol)
