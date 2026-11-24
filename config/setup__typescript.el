(use-package typescript-mode
  :ensure t)

;; if you use typescript-mode
(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))


(provide 'setup__typescript)
