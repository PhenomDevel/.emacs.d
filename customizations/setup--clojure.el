;;;;
;; Clojure
;;;;

;; Enable paredit for Clojure
(add-hook 'clojure-mode-hook 'enable-paredit-mode)

;; This is useful for working with camel-case tokens, like names of
;; Java classes (e.g. JavaClassName)
(add-hook 'clojure-mode-hook 'subword-mode)

;; A little more syntax highlighting
(require 'clojure-mode-extra-font-locking)

;; syntax hilighting for midje
(add-hook 'clojure-mode-hook
          (lambda ()
            (setq inferior-lisp-program "lein repl")
            (font-lock-add-keywords
             nil
             '(("(\\(facts?\\)"
                (1 font-lock-keyword-face))
               ("(\\(background?\\)"
                (1 font-lock-keyword-face))))
            (define-clojure-indent (fact 1))
            (define-clojure-indent (facts 1))))

;;;;
;; Cider
;;;;

;; provides minibuffer documentation for the code you're typing into the repl
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

;; go right to the REPL buffer when it's finished connecting
(setq cider-repl-pop-to-buffer-on-connect t)

;; When there's a cider error, show its buffer and switch to it
(setq cider-show-error-buffer t)
(setq cider-auto-select-error-buffer t)

;; Where to store the cider history.
(setq cider-repl-history-file "~/.emacs.d/cider-history")

;; Wrap when navigating history.
(setq cider-repl-wrap-history t)

;; enable paredit in your REPL
(add-hook 'cider-repl-mode-hook 'paredit-mode)

;; Use clojure mode for other extensions
(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.boot$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljs.*$" . clojure-mode))
(add-to-list 'auto-mode-alist '("lein-env" . enh-ruby-mode))


;; key bindings
;; these help me out with the way I usually develop web apps
(defun cider-start-http-server ()
  (interactive)
  (cider-load-current-buffer)
  (let ((ns (cider-current-ns)))
    (cider-repl-set-ns ns)
    (cider-interactive-eval (format "(println '(def server (%s/start))) (println 'server)" ns))
    (cider-interactive-eval (format "(def server (%s/start)) (println server)" ns))))


(defun cider-refresh ()
  (interactive)
  (cider-interactive-eval (format "(user/reset)")))

(defun cider-user-ns ()
  (interactive)
  (cider-repl-set-ns "user"))

(eval-after-load 'cider
  '(progn
     (define-key clojure-mode-map (kbd "C-c C-v") 'cider-start-http-server)
     (define-key clojure-mode-map (kbd "C-M-r") 'cider-refresh)
     (define-key clojure-mode-map (kbd "C-c u") 'cider-user-ns)
     (define-key cider-mode-map (kbd "C-c u") 'cider-user-ns)))


(setq cider-repl-result-prefix ";=> ")

(define-clojure-indent
  (defroutes 'defun)
  (match 'defun)
  (letk 'defun)
  (context 2)
  (fnk 'defun)
  (defnk 'defun)
  (set-env! 'defun)
  (get-env 'defun)
  (println 'defun)
  (lazy-seq'defun)
  (routes 'defun)
  (system-map 'defun)
  (describe 'defun)
  (context 'defun)
  (it 'defun)
  (facts 'defun)
  (fact 'defun)
  (future-facts 'defun)
  (future-fact 'defun)
  (pprint 'defun)
  (render 'defun)
  (ident 'defun)
  (will-update 'defun)
  (did-update 'defun)
  (did-mount 'defun)
  (will-unmount 'defun)
  (render-state 'defun)
  (init-state 'defun)
  (will-mount 'defun)
  (input 'defun)
  (go 'defun)
  (form 'defun)
  (update! 'defun)
  (let-routes 'defun)
  (html 'defun)
  (doall 'defun)
  (dosync 'defun)

  ;; Compojure
  (ANY 2)
  (GET 'defun)
  (PUT 'defun)
  (POST 'defun)
  (where 'defun)
  (add-watch 'defun)
  (listen! 'defun)

  ;; Om Next
  (query 'defun)
  (params 'defun)
  (add-root! 'defun)
  (should-update 'defun)
  (componentWillMount 'defun)
  (componentDidMount 'defun)
  (componentDidUpdate 'defun)
  (componentWillUnmount 'defun)
  (componentWillUpdate 'defun)
  (shouldComponentUpdate 'defun)

  ;; Wrapper
  (form-to 'defun)

  (letfun 'defun)
  (on-click 'defun)
  )

(provide 'setup--clojure)
