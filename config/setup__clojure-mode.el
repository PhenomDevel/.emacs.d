(use-package
 clojure-mode

 :ensure
 t

 :after flycheck

 :requires
 (clojure-mode-extra-font-locking)

 :mode
 (("\\.edn\\'" . clojure-mode)
  ("\\.boot\\'" . clojure-mode)
  ("\\.clj\\'" . clojure-mode)
  ("\\.cljs\\'" . clojurescript-mode))

 :config
 (require 'flycheck-clj-kondo)

 :init
 (add-hook 'clojure-mode-hook 'flycheck-mode)

 )


(provide 'setup__clojure-mode)
