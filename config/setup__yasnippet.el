;; -*- lexical-binding: t -*-
;; Provide snippets and be able to interpose them into any file

(defvar snippets-directories
  (list (locate-user-emacs-file "config/snippets")))

(use-package yasnippet
  :hook
  (prog-mode . yas-minor-mode)

  :config
  (setq yas-snippet-dirs snippets-directories)
  (yas-reload-all)

  :diminish
  yas-minor-mode)

(provide 'setup__yasnippet)
