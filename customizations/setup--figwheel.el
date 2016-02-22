(util/define-keys cider-repl-mode-map
                  ;; ...               
                  "C-c C-f" (lambda ()
                              (interactive)
                              (cider-interactive-eval "(fig-init)"))
                  ;; ...               
                  )


(provide 'setup--figwheel)
