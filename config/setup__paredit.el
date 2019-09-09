;; Provides easy structured editing of S-expression data

(use-package
 paredit

 :ensure t

 :init
 (add-hook 'prog-mode-hook #'paredit-mode)

 :diminish
 paredit-mode

 ;; TODO: Keybindings

 ;; Add more

 )

(provide 'setup__paredit)
