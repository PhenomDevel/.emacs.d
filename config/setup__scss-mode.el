;; -*- lexical-binding: t -*-
;; scss-mode is part of the built-in css-mode.el

(use-package css-mode
  :ensure nil

  :mode
  ("\\.scss\\'" . scss-mode)

  :custom
  (css-indent-offset 2))

(provide 'setup__scss-mode)
