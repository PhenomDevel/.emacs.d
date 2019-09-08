(defvar snippets-directories
  '("~/.emacs.d/config/snippets"))

(use-package
 yasnippet

 :ensure t

 :config
 (with-eval-after-load 'yasnippet
   (setq yas-snippet-dirs snippets-directories))
 (yas-reload-all)
 (yas-global-mode)

 :diminish
 yas-minor-mode
 )


(provide 'setup__yasnippet)
