(require 'util)



(define-key clojure-mode-map
  (kbd "C-c M-s")
  (lambda () (interactive) (magit-status)))


(provide 'setup--magit)
