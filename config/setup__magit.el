;; Use git with a graphical interface within emacs

(use-package
  magit

  :ensure t

  :defer t

  :commands
  (magit-status magit-log-all magit-blame-addition)

  :bind
  (("C-c ms" . magit-status)
   ("C-c ml" . magit-log-all)
   ("C-c mb" . magit-blame-addition)
   ("C-c mp" . magit-push)
   ("C-c mP" . magit-pull))

  :config
  (setq magit-cygwin-mount-points nil)
  (custom-set-faces
   '(magit-diff-added ((t (:background "#007700" :foreground "#FFFFFF"))))
   '(magit-diff-added-highlight ((t (:background "#007700" :foreground "#FFFFFF"))))
   '(magit-diff-removed ((t (:background "#770000" :foreground "#FFFFFF"))))
   '(magit-diff-removed-highlight ((t (:background "#770000" :foreground "#FFFFFF")))))


  ;; Add more
  )


(provide 'setup__magit)
