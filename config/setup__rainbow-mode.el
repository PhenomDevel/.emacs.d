;; Show the colors for colorcodes / colornames directly within the buffer

(use-package
  rainbow-mode

  :ensure
  t

  :commands
  (rainbow-mode)

  :bind
  (("C-c rm" . rainbow-mode))

  ;; Add more
  )

(provide 'setup__rainbow-mode)
