;; -*- lexical-binding: t -*-

(require 'util)

(defface my/eval-error-face
  '((t (:foreground "#FFAACC" :weight bold)))
  "Error highlight for CIDER evaluation.")

(defface my/eval-success-face
  '((t (:foreground "#FFFFCC" :background "#555577" :weight bold)))
  "Flash on successful CIDER evaluation.")

(defun util-clojure/cider-cmd (cmd)
  "Return a command that evaluates CMD in the connected REPL."
  (lambda ()
    (interactive)
    (cider-interactive-eval cmd)))

(defun cider-eval-dwim ()
  (interactive)
  (save-excursion
    (let ((cursor nil)
          (sexp nil))
      (ignore-errors
        (while (not (string-match-p "^(comment.*" (or sexp "")))
          (setq cursor (point))
          (paredit-backward-up)
          (setq sexp (cider-sexp-at-point))))
      (goto-char cursor)
      (unless (cider-sexp-at-point)
        (paredit-backward-up))
      (cider-eval-sexp-at-point))))

(use-package cider
  :commands
  (cider-connect cider-jack-in)

  :config
  (setq
   cider-repl-result-prefix ";=> "
   cider-eval-result-display 'overlay
   cider-eval-result-font-lock t
   eldoc-echo-area-use-multiline-p t
   cider-show-error-buffer t
   cider-repl-history-file (locate-user-emacs-file "cider-history")
   cider-repl-wrap-history t
   cider-font-lock-dynamically '(macro core function var)
   cider-repl-use-pretty-printing t
   cider-save-file-on-load nil
   cider-repl-use-clojure-font-lock t
   cider-repl-display-help-banner nil

   cider-prompt-for-symbol t
   cider-special-mode-truncate-lines nil

   ;; Shadow-CLJS Problem mit autocomplete fixen
   cider-enhanced-cljs-completion-p nil

   nrepl-log-messages t)

  (set-face-attribute 'cider-result-overlay-face nil
                      :foreground "#CCFFCC" :weight 'bold :background 'unspecified)
  (set-face-attribute 'cider-fringe-good-face nil :foreground "#00CC53")
  (with-eval-after-load 'cider-compilation
    (set-face-attribute 'cider-error-highlight-face nil :inherit 'my/eval-error-face))

  ;; Doctronic specific component keybindings
  (dolist (map (list cider-mode-map cider-repl-mode-map))
    (define-key map (kbd "C-c i") (util/all-buffers-saved (util-clojure/cider-cmd "(user/system-restart!)")))
    (define-key map (kbd "C-c k") (util/all-buffers-saved (util-clojure/cider-cmd "(user/system-stop!)")))
    (define-key map (kbd "C-c I") (util-clojure/cider-cmd "(do (require 'clojure.tools.namespace.repl) (clojure.tools.namespace.repl/refresh-all))"))
    (define-key map (kbd "C-c f") (util/all-buffers-saved (util-clojure/cider-cmd "(user/fig-init)")))
    (define-key map (kbd "C-c F") (util/all-buffers-saved (util-clojure/cider-cmd "(do (user/system-restart!) (user/fig-init))"))))

  :bind
  (("C-c cc" . cider-connect)
   ("C-c ji" . cider-jack-in)
   ("C-c q" . cider-quit)

   :map cider-mode-map
   ("C-c C-d" . cider-doc)

   :map cider-repl-mode-map
   ("C-c cb" . cider-repl-clear-buffer)
   ("M-RET" . cider-repl-newline-and-indent)
   ("RET" . cider-repl-return))

  :diminish
  cider-mode)

(provide 'setup__cider)
