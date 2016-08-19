
(setq highlight-symbol-on-navigation-p t)
(setq highlight-symbol-idle-delay 1.5)

;; highlieght-symbol
(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

(add-hook 'prog-mode-hook 'highlight-symbol-mode)

(provide 'setup--highlight-symbol)
