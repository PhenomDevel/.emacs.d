(use-package
  smerge-mode

  :ensure
  t

  :config
  (setq
   )

  :bind
  (("C-c ko" . smerge-keep-other)
   ("C-c km" . smerge-keep-mine)))

(provide 'setup__smerge)
