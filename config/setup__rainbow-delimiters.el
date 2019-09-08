(use-package
 rainbow-delimiters

 :ensure t

 :init
 (progn (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

 :config
 (set-face-attribute 'region nil :background "#777")
 (set-face-attribute 'rainbow-delimiters-depth-9-face nil :foreground "#FF00BF")
 (set-face-attribute 'rainbow-delimiters-depth-8-face nil :foreground "#58ACFA")
 (set-face-attribute 'rainbow-delimiters-depth-7-face nil :foreground "#58FAF4")
 (set-face-attribute 'rainbow-delimiters-depth-6-face nil :foreground "#58FAAC")
 (set-face-attribute 'rainbow-delimiters-depth-5-face nil :foreground "#58FA58")
 (set-face-attribute 'rainbow-delimiters-depth-4-face nil :foreground "#ACFA58")
 (set-face-attribute 'rainbow-delimiters-depth-3-face nil :foreground "#F4FA58")
 (set-face-attribute 'rainbow-delimiters-depth-2-face nil :foreground "#FAAC58")
 (set-face-attribute 'rainbow-delimiters-depth-1-face nil :foreground "#F781F3")

 :diminish
 rainbow-delimiters-mode)

(provide 'setup__rainbow-delimiters)
