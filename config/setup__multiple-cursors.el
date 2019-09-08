(use-package
 multiple-cursors

 :ensure t

 :commands
 (mc/mark-next-like-this
  mc/mark-all-like-this)

 :bind
 (("M-1" . mc/mark-next-like-this)
  ("M-2" . mc/skip-to-next-like-this)
  ("M-3" . mc/mark-all-like-this)
  ("M-!" . mc/mark-all-like-this)))

(provide 'setup__multiple-cursors)
