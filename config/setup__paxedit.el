;; Paxedit allows the quick refactoring of symbolic expressions from deleting,
;; swapping with neighbor symbolic expressions, and enclosing specified expressions in a comment expression.

(use-package
  paxedit

  :ensure
  t

  :defer
  t

  :hook
  ((prog-mode . paxedit-mode)
   (cider-mode . paxedit-mode)
   (clojure-mode . paxedit-mode)
   (cider-repl-mode . paxedit-mode))

  ;; TODO: Keybindings
  
  
  ;; Add more
  )


(provide 'setup__paxedit)





