(use-package
  linum

  :ensure t
  
  :defer t

  :commands
  (linum-mode)

  :bind
  (("C-c lm" . linum-mode))
  
  ;; Add more
  )

(provide 'setup__linum)
