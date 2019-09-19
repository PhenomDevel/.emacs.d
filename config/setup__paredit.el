;; Provides easy structured editing of S-expression data

(use-package
  paredit

  :ensure
  t

  :defer
  t

  :hook
  ((prog-mode . paredit-mode)
   (cider-mode . paredit-mode)
   (clojure-mode . paredit-mode)
   (cider-repl-mode . paredit-mode)
   (with-editor-mode . paredit-mode))

  ;; TODO: Keybindings
  :bind
  (:map paredit-mode-map
	("C-<S-s>" . paredit-forward-slurp-sexp)
	("C-B" . paredit-forward-barf-sexp)
	
	;; paredit-backward-slurp-sexp
	;; paredit-backward-barf-sexp

	;; paredit-forward
	;; paredit-backward
	;; paredit-forward-down
	;; paredit-backward-up
	;; paredit-backward-down
	;; paredit-forward-up

	;; paredit-split-sexp
	)
  
  ;; Add more

  )


(provide 'setup__paredit)
