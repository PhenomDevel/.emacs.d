;; -*- lexical-binding: t -*-

(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init
  (when (executable-find "pandoc")
    (setq markdown-command "pandoc"))
  :bind (:map markdown-mode-map
         ("C-c C-e" . markdown-do)))

(provide 'setup__markdown-mode)
