;; Allows easy refactoring of clojure code

(use-package
  clj-refactor

  :ensure
  t

  :requires
  (clojure-mode cider-repl-mode)

  :config
  (setq
   ;; CLojure Refactor warning ausschalten
   cljr-suppress-middleware-warnings t
   cljr-add-keybindings-with-prefix "C-c C-r")
  )

(provide 'setup__clj-refactor)
