;; -*- lexical-binding: t -*-

(use-package clojure-mode
  :mode
  (("\\.edn\\'" . clojure-mode)
   ("\\.boot\\'" . clojure-mode)
   ("\\.clj\\'" . clojure-mode)
   ("\\.cljc\\'" . clojurec-mode)
   ("\\.cljs\\'" . clojurescript-mode))

  :config
  (define-clojure-indent
   (defroutes 'defun)
   (match 'defun)
   (for-all 'defun)
   (letk 'defun)
   (specify 'defun)
   (specify! 'defun)
   (ANY 2)
   (context 'defun)
   (fnk 'defun)
   (defnk 'defun)
   (set-env! 'defun)
   (get-env 'defun)
   (println 'defun)
   (lazy-seq 'defun)
   (routes 'defun)
   (system-map 'defun)
   (describe 'defun)
   (it 'defun)
   (facts 'defun)
   (fact 'defun)
   (future-facts 'defun)
   (future-fact 'defun)
   (pprint 'defun)
   (render 'defun)
   (ident 'defun)
   (q/render 'defun)
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

   ;; Reframe
   (register-handler 'defun)
   (register-sub 'defun)
   (reg-sub 'defun)
   (reg-event-fx 'defun)
   (reg-event-db 'defun)
   (reg-cofx 'defun)
   (reg-fx 'defun)

   ;; uix
   (defui 'defun)
   ($ 'defun)))

;; clojure-lsp already runs clj-kondo; only add the flycheck checker without it
(when (and (executable-find "clj-kondo")
           (not (executable-find "clojure-lsp")))
  (use-package flycheck-clj-kondo
    :after (flycheck clojure-mode)))

(provide 'setup__clojure-mode)
