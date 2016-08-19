;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hydra

(defhydra hydra-zoom ()
  "
Allows you to zoom your text.
"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))

(global-set-key (kbd "<f2>") 'hydra-zoom/body)

(provide 'setup--hydra)
