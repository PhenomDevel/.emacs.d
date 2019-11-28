(use-package
  simple
  :ensure nil
  :hook
  ((before-save . delete-trailing-whitespace)))


(provide 'setup__simple)
