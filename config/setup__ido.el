;; Interactively do things - fast and efficent alternative to iswitch

(use-package
  ido

  :ensure
  t

  ;; :commands, :hooks
  :requires
  (ido-completing-read+ crm-custom)
  
  :config
  (ido-mode 1)
  (ido-everywhere 1)
  (set-default 'imenu-auto-rescan t)
  (define-key ido-common-completion-map (kbd "SPC") 'ido-restrict-to-matches)
  (define-key ido-file-completion-map (kbd "C-w") 'ido-delete-backward-updir)

  ;; Add more
  )

(provide 'setup__ido)
