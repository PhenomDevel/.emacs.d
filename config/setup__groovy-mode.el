(use-package
  groovy-mode

  :ensure t

  :mode
  ("\\.jenkinsfile\\'" . groovy-mode)

  :config
  (setq
   groovy-indent-offset 2))

(provide 'setup__groovy-mode)
