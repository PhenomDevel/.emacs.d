;; -*- lexical-binding: t -*-

(use-package smerge-mode
  :ensure nil

  :bind
  (("C-c ko" . smerge-keep-lower)
   ("C-c km" . smerge-keep-upper)))

(provide 'setup__smerge)
