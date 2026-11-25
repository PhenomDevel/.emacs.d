;; -*- lexical-binding: t -*-

(use-package groovy-mode
  :mode
  (("\\.jenkinsfile\\'" . groovy-mode)
   ("/Jenkinsfile\\'" . groovy-mode))

  :config
  (setq groovy-indent-offset 2))

(provide 'setup__groovy-mode)
