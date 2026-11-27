;; -*- lexical-binding: t -*-
;; Allows easy refactoring of clojure code

(use-package clj-refactor
  :hook
  (clojure-mode . clj-refactor-mode)

  :config
  (setq cljr-suppress-middleware-warnings t)
  (cljr-add-keybindings-with-prefix "C-c C-r")

  :diminish
  clj-refactor-mode)

(provide 'setup__clj-refactor)
