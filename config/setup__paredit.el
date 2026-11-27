;; -*- lexical-binding: t -*-
;; Provides easy structured editing of S-expression data
;; Lisp modes only; `lisp-data-mode' covers emacs-lisp, lisp and lisp-interaction.

(defun my/cider-repl-paredit-ret ()
  "Keep RET as `cider-repl-return' in the REPL.
paredit >= 25 binds RET, and minor-mode maps take precedence over the
REPL's major-mode map."
  (require 'paredit)
  (let ((map (make-sparse-keymap)))
    (set-keymap-parent map paredit-mode-map)
    (define-key map (kbd "RET") #'cider-repl-return)
    (setq-local minor-mode-overriding-map-alist
                (cons (cons 'paredit-mode map) minor-mode-overriding-map-alist))))

(add-hook 'cider-repl-mode-hook #'my/cider-repl-paredit-ret)

(use-package paredit
  :hook
  ((lisp-data-mode . paredit-mode)
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
        ))

(provide 'setup__paredit)
