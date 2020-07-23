(defconst global-pretty-symbols
  '((">=" . ?≥)
    ("<=" . ?≤)
    ("->" . ?⮕)
    ("Thread/sleep" . ?🌝)))

(defconst clojure-pretty-symbols
  '())

(defun add-pretty-symbols (pairs)
  (mapc
   (lambda (pair)
     (push pair prettify-symbols-alist))
   pairs))

(add-hook 'prog-mode-hook
	  (lambda ()
	    (add-pretty-symbols global-pretty-symbols)
	    (prettify-symbols-mode)))

(add-hook 'clojure-mode-hook
	  (lambda ()
	    (add-pretty-symbols clojure-pretty-symbols)
	    (prettify-symbols-mode)))


(provide 'setup__pretty-mode)
