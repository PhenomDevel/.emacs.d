;; Provides easy structured editing of S-expression data

(use-package
  paredit

  :ensure
  t

  :defer
  t

  :hook
  (prog-mode . paredit-mode)

  ;; TODO: Keybindings
  :bind
  (("C-j" . paredit-backward))
  
  ;; Add more

  )


(provide 'setup__paredit)
