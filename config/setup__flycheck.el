(use-package flycheck

  :ensure t

  :config
  (set-face-attribute 'flycheck-info nil :foreground "#3ce000")
  (set-face-attribute 'flycheck-warning nil :foreground "#f5da42")
  (set-face-attribute 'flycheck-error nil :foreground "#FF0000")


  (setq flycheck-disabled-checkers
	'(clojure-cider-eastwood
	  clojure-cider-kibit
	  clojure-cider-typed))

  (setq flycheck-scoped-checker 'scss)
  (setq flycheck-highlighting-mode 'sexps)
  (setq flycheck-check-syntax-automatically '(save)) ;; Only check on save so it does not bother

  :bind
  (:map flycheck-mode-map
	("C-f C-c n" . flycheck-next-error)
	("C-f C-c p" . flycheck-previous-error)
	("C-f C-c l e" . flycheck-list-errors))

  :hook
  (clojure-mode . flycheck-mode)
  (lua-mode . flycheck-mode)
  )


(provide 'setup__flycheck)
