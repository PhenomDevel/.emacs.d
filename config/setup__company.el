;; Shows hints / matches in a tooltip like dropdown

(use-package
 company

 :ensure t

 :config
 ;; How long should company wait after a keystroke to display
 (setq company-idle-delay 0.15)

 ;; How many characters should be written before company is displayed?
 (setq company-minimum-prefix-length 1)
 (global-company-mode t)

 :diminish
 company-mode

 ;; Add more
 )


(provide 'setup__company)
