;; -*- lexical-binding: t -*-
;; In-buffer completion popup on top of completion-at-point (CIDER, lsp,
;; elisp), filtered with the same orderless rules as the minibuffer

(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-auto-delay 0.15)
  (corfu-auto-prefix 1)
  (corfu-cycle t)
  (corfu-popupinfo-delay '(0.5 . 0.2))

  :config
  (global-corfu-mode 1)
  (corfu-popupinfo-mode 1))

;; Emacs < 31 has no child frames in the terminal
(when (< emacs-major-version 31)
  (use-package corfu-terminal
    :after corfu

    :config
    (corfu-terminal-mode 1)))

(provide 'setup__corfu)
