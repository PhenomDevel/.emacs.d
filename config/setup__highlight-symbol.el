;; -*- lexical-binding: t -*-
;; Highlight symbols within a buffer and navigate between them

(use-package highlight-symbol
  :hook
  (prog-mode . highlight-symbol-mode)

  :custom
  (highlight-symbol-on-navigation-p t)
  (highlight-symbol-idle-delay 1.5)

  ;; TODO: Keybindings
  :bind
  (("C-c h" . highlight-symbol)
   ("C-c C-h n" . highlight-symbol-next)
   ("C-c C-h p" . highlight-symbol-previous))

  :diminish
  highlight-symbol-mode)

(provide 'setup__highlight-symbol)
