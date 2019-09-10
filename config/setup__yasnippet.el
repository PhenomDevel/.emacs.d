;; Provide snippets and be able to interpose them into any file

(defvar snippets-directories
  '("~/.emacs.d/config/snippets"))

(use-package
  yasnippet

  :ensure
  t
  
  :defer
  t

  :hook
  (prog-mode . yas-minor-mode)
  
  :config
  (with-eval-after-load 'yasnippet
    (setq yas-snippet-dirs snippets-directories))
  (yas-reload-all)

  :diminish
  yas-minor-mode

  )


(provide 'setup__yasnippet)
