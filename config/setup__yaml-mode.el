(use-package
  yaml-mode

  :ensure t

  :defer t

  :mode
  (("\\.yaml\\'" . yaml-mode))

  ;; Add more
  )

(provide 'setup__yaml-mode)
