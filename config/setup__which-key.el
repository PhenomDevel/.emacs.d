(use-package
 which-key

 :ensure t

 :config
 (setq which-key-show-early-on-C-h t)
 (setq which-key-side-window-max-height 0.2)
 (which-key-mode)

 :diminish
 which-key-mode

 ;; Add more
 )

(provide 'setup__which-key)
