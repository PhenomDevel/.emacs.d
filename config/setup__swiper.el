;; Swiper is an alternative to isearch that uses ivy to show an overview of all matches.

(use-package
 swiper

 :ensure t

 :bind
 (("C-s" . swiper))

 ;; Add more
 )

(provide 'setup__swiper)
