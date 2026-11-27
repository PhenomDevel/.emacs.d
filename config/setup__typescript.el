;; -*- lexical-binding: t -*-
;; TypeScript via lsp-mode (typescript-language-server).
;; Uses the built-in tree-sitter modes once the grammars are installed
;; (M-x my/install-typescript-grammars, needs a C compiler), otherwise
;; falls back to the typescript-mode package.

(with-eval-after-load 'treesit
  (dolist (src '((typescript "https://github.com/tree-sitter/tree-sitter-typescript"
                             "v0.23.2" "typescript/src")
                 (tsx "https://github.com/tree-sitter/tree-sitter-typescript"
                      "v0.23.2" "tsx/src")))
    (unless (assq (car src) treesit-language-source-alist)
      (push src treesit-language-source-alist))))

(defun my/install-typescript-grammars ()
  "Install the tree-sitter grammars for TypeScript and TSX."
  (interactive)
  (require 'treesit)
  (dolist (lang '(typescript tsx))
    (treesit-install-language-grammar lang))
  (message "Grammars installed; .ts/.tsx use typescript-ts-mode after a restart"))

(if (and (fboundp 'treesit-language-available-p)
         (treesit-language-available-p 'typescript))
    (progn
      (add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))
      (add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode)))
  (use-package typescript-mode
    :mode ("\\.tsx?\\'" . typescript-mode)))

(provide 'setup__typescript)
