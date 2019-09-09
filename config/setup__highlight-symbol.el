;; Highlight symbols within a buffer and navigate between them

(use-package
 highlight-symbol

 :ensure t

 :config
 (add-hook 'prog-mode-hook 'highlight-symbol-mode)
 (setq highlight-symbol-on-navigation-p t)
 (setq highlight-symbol-idle-delay 1.5)

 ;; TODO: Keybindings

 ;; Add more
 )

(provide 'setup__highlight-symbol)
