;; -*- lexical-binding: t -*-
;; Tiny enhancements to `eval-sexp-fu` of cider (Flash on eval etc.)

(use-package cider-eval-sexp-fu
  :after cider

  :init
  (setq eval-sexp-fu-flash-face 'my/eval-success-face
        eval-sexp-fu-flash-duration 0.3
        eval-sexp-fu-flash-error-face 'my/eval-error-face
        eval-sexp-fu-flash-error-duration 0.5))

(provide 'setup__cider-eval-sexp-fu)
