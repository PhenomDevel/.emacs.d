(use-package
 clojure-mode

 :ensure
 t

 :requires
 (clojure-mode-extra-font-locking)

 :mode
 (("\\.edn\\'" . clojure-mode)
  ("\\.boot\\'" . clojure-mode)
  ("\\.clj\\'" . clojure-mode)
  ("\\.cljs\\'" . clojure-mode))

 )


(provide 'setup__clojure-mode)
