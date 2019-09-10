(use-package
  flycheck

  :ensure t

  
  ;; Add more
  )

(use-package
  flycheck-clojure

  :ensure t

  :defer t
  
  :after flycheck
  )

(provide 'setup__flycheck)
