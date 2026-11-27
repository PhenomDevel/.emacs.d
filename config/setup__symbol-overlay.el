;; -*- lexical-binding: t -*-
;; Highlight symbols within a buffer and navigate between them

(use-package symbol-overlay
  :hook
  (prog-mode . symbol-overlay-mode)

  :custom
  ;; Temporary highlight of the symbol at point
  (symbol-overlay-idle-time 1.5)

  :bind
  (("C-c h" . symbol-overlay-put)
   :map symbol-overlay-mode-map
   ("M-n" . symbol-overlay-jump-next)
   ("M-p" . symbol-overlay-jump-prev))

  :diminish
  symbol-overlay-mode)

(provide 'setup__symbol-overlay)
