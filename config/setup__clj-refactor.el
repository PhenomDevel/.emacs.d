;; Allows easy refactoring of clojure code

(use-package
  clj-refactor

  :ensure
  t

  :requires
  (clojure-mode)

  :config
  (cljr-add-keybindings-with-prefix "C-c C-r")
  )

(provide 'setup__clj-refactor)
