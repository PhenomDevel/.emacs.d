;; Tiny enhancements to `eval-sexp-fu` of cider (Flash on eval etc.)

(use-package
 cider-eval-sexp-fu

 :ensure t

 :requires
 (cider)

 :commands
 (cider-connect))

(provide 'setup__cider-eval-sexp-fu)
