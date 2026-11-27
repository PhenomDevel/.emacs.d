;; -*- lexical-binding: t -*-
;; Navigation: flycheck's default prefix C-c ! (n / p / l)

(use-package flycheck
  :config
  (set-face-attribute 'flycheck-info nil :foreground "#3ce000")
  (set-face-attribute 'flycheck-warning nil :foreground "#f5da42")
  (set-face-attribute 'flycheck-error nil :foreground "#FF0000")

  (setq flycheck-disabled-checkers
        '(clojure-cider-eastwood
          clojure-cider-kibit
          clojure-cider-typed))

  (setq flycheck-highlighting-mode 'sexps)
  (setq flycheck-check-syntax-automatically '(save)) ;; Only check on save so it does not bother

  :hook
  (clojure-mode . flycheck-mode))

(provide 'setup__flycheck)
