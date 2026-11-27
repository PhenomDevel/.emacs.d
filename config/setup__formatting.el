;; -*- lexical-binding: t -*-
;; Whitespace and per-project formatting rules

;; Trim trailing whitespace only on edited lines: no diff noise in foreign
;; files. Markdown is exempt because two trailing spaces are a line break.
(use-package ws-butler
  :config
  (dolist (mode '(markdown-mode gfm-mode))
    (add-to-list 'ws-butler-global-exempt-modes mode))
  (ws-butler-global-mode 1)

  :diminish
  ws-butler-mode)

;; Honor .editorconfig (built in since Emacs 30, installed on 29)
(use-package editorconfig
  :config
  (editorconfig-mode 1)

  :diminish
  editorconfig-mode)

(provide 'setup__formatting)
