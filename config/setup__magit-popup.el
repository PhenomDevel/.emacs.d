(use-package
  magit-popup

  :ensure t

  :defer t
  
  :after magit

  :commands
  (magit-status magit-log-all magit-blame-addition)
  
  )

(provide 'setup__magit-popup)
