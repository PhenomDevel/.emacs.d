(require 'diminish)

(eval-after-load "company"           '(diminish 'company-mode))
(eval-after-load "highlight-symbol"  '(diminish 'highlight-symbol-mode))
(eval-after-load "paredit"           '(diminish 'paredit-mode))
(eval-after-load "undo-tree"         '(diminish 'undo-tree-mode))
(eval-after-load "yasnippet"         '(diminish 'yas-minor-mode))
(eval-after-load "eldoc"             '(diminish 'eldoc-mode))
(eval-after-load "rainbow-mode"      '(diminish 'rainbow-mode))
(eval-after-load "paxedit"           '(diminish 'paxedit-mode))
(eval-after-load "aggressive-indent" '(diminish 'aggressive-indent-mode))
(eval-after-load "clj-refactor"      '(diminish 'clj-refactor-mode))
(eval-after-load "cider"             '(diminish 'cider-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'setup--diminish)
