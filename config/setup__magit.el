;; -*- lexical-binding: t -*-
;; Use git with a graphical interface within emacs

(use-package magit
  :bind
  (("C-c ms" . magit-status)
   ("C-c ml" . magit-log-all)
   ("C-c mb" . magit-blame-addition)
   ("C-c mp" . magit-push)
   ("C-c mP" . magit-pull))

  :custom-face
  (magit-diff-added ((t (:background "#007700" :foreground "#FFFFFF"))))
  (magit-diff-added-highlight ((t (:background "#007700" :foreground "#FFFFFF"))))
  (magit-diff-removed ((t (:background "#770000" :foreground "#FFFFFF"))))
  (magit-diff-removed-highlight ((t (:background "#770000" :foreground "#FFFFFF"))))

  :config
  (setq magit-cygwin-mount-points nil))

(provide 'setup__magit)
