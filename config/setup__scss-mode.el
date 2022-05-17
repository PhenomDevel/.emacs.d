(use-package
  scss-mode

  :mode
  ("\\.\\(scss\\)\\'"
   "\\.\\(jenkinsfile\\)\\'")

  :config
  (setq scss-compile-at-save nil
	css-indent-offset 2))


(provide 'setup__scss-mode)
