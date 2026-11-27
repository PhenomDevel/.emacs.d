;; -*- lexical-binding: t -*-
;; Forces some commands to automatically run in a single fullscreen frame

;; Loaded eagerly: deferring on `magit-status' never triggers, since magit
;; already autoloads it. The advice also applies to the autoload stub.
(use-package fullframe
  :demand t

  :config
  (fullframe magit-status magit-mode-quit-window))

(provide 'setup__fullframe)
