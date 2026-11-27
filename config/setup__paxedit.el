;; -*- lexical-binding: t -*-
;; Paxedit allows the quick refactoring of symbolic expressions from deleting,
;; swapping with neighbor symbolic expressions, and enclosing specified expressions in a comment expression.

(use-package paxedit
  :hook
  ((lisp-data-mode . paxedit-mode)
   (clojure-mode . paxedit-mode)
   (cider-repl-mode . paxedit-mode)))

(provide 'setup__paxedit)
