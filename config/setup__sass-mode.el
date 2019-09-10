(use-package
  sass-mode

  :ensure t
  
  :defer true

  :mode
  (("\\.scss\\'" . sass-mode)
   ("\\.sass\\'" . sass-mode))
  
  ;; Add more
  )

(provide 'setup__sass-mode)
