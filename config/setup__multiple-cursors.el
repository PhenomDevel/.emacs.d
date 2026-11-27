;; -*- lexical-binding: t -*-
;; Be able to edit multiple lines at once

(use-package multiple-cursors
  :bind
  (("M-1" . mc/mark-next-like-this)
   ("M-2" . mc/skip-to-next-like-this)
   ("M-3" . mc/mark-all-like-this)))

(provide 'setup__multiple-cursors)
