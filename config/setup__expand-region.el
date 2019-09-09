;; Package to expand a region step by step for selection

(use-package
 expand-region

 :ensure t

 :bind
 (("M-e" . er/expand-region)))

(provide 'setup__expand-region)
