(use-package
  markdown-mode

  :ensure t

  :defer t

  :mode
  (("\\.ml\\'" . markdown-mode)
   ("\\.markdown\\'" . markdown-mode))
  
  ;; Add more
  
  )

(provide 'setup__markdown-mode)
