(use-package
 fullframe

 :ensure t

 :config
 (eval-after-load 'fullframe
   (fullframe magit-status magit-mode-quit-window))

 ;; Add more

 )

(provide 'setup__fullframe)
