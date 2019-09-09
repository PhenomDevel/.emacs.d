;; Paxedit allows the quick refactoring of symbolic expressions from deleting,
;; swapping with neighbor symbolic expressions, and enclosing specified expressions in a comment expression.

(use-package
  paxedit

  :ensure t

  :config
  (eval-after-load 'paxedit
    (progn (define-key paxedit-mode-map (kbd "ESC-<right>") 'paxedit-transpose-forward)
           (define-key paxedit-mode-map (kbd "ESC-<left>") 'paxedit-transpose-backward)
           (define-key paxedit-mode-map (kbd "ESC-<up>") 'paxedit-backward-up)
           (define-key paxedit-mode-map (kbd "ESC-<down>") 'paxedit-backward-end)
           (define-key paxedit-mode-map (kbd "M-b") 'paxedit-previous-symbol)
           (define-key paxedit-mode-map (kbd "M-f") 'paxedit-next-symbol)
           (define-key paxedit-mode-map (kbd "C-u C-c") 'paxedit-copy)
           (define-key paxedit-mode-map (kbd "C-&") 'paxedit-kill)
           (define-key paxedit-mode-map (kbd "C-*") 'paxedit-delete)
           (define-key paxedit-mode-map (kbd "C-^") 'paxedit-sexp-raise)
           ;; Symbol backward/forward kill
           (define-key paxedit-mode-map (kbd "C-w") 'paxedit-backward-kill)
           (define-key paxedit-mode-map (kbd "M-w") 'paxedit-forward-kill)
           ;; Symbol manipulation
           (define-key paxedit-mode-map (kbd "M-u") 'paxedit-symbol-change-case)
           (define-key paxedit-mode-map (kbd "C-S-c") 'paxedit-symbol-copy)
           (define-key paxedit-mode-map (kbd "C-#") 'paxedit-symbol-kill)))

  ;; TODO: Keybindings

  ;; Add more
  )


(provide 'setup__paxedit)
