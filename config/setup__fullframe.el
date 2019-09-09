;; Forces some commands to automatically run in a single fullscreen frame

(use-package
 fullframe

 :ensure t

 :config
 (eval-after-load 'fullframe
   (fullframe magit-status magit-mode-quit-window))

 ;; Add more

 )

(provide 'setup__fullframe)
