;; -*- lexical-binding: t -*-

(defface error-face
  '((t (:foreground "#CC5353"))) "Red Highlight")

(defface result-overlay-face
  '((t (:foreground "#00CC53"))) "Result-Overlay")

(defface success-face
  '((t (:foreground "yellow" :background "#555577"))) "Green Highlight")

(set-face-attribute 'success-face nil :weight 'bold)
(set-face-attribute 'error-face nil :weight 'bold)

(defun util/save-all-buffers! ()
  (interactive)
  (save-some-buffers t))

(defun util/all-buffers-saved (f)
  (let ((g f))
    (lambda ()
      (interactive)
      (util/save-all-buffers!)
      (funcall g))))

(defun util-clojure/cider-cmd (cmd)
  (let ((cmd cmd))
    (lambda ()
      (interactive)
      (cider-interactive-eval cmd))))

(use-package
  cider

  :ensure t

  :after clojure-mode

  :commands
  (cider-connect)

  :config
  (setq
   cider-repl-result-prefix ";=> "
   cider-use-overlays t
   cider-overlays-use-font-lock t
   eldoc-echo-area-use-multiline-p t
   cider-repl-pop-to-buffer-on-connect nil
   cider-show-error-buffer t
   cider-repl-history-file "~/.emacs.d/cider-history"
   cider-repl-wrap-history t
   cider-font-lock-dynamically '(macro core function var)
   cider-prompt-for-project-on-connect nil
   cider-repl-use-pretty-printing t
   cider-prompt-save-file-on-load nil
   cider-repl-use-clojure-font-lock t
   cider-repl-display-help-banner nil
   eval-sexp-fu-flash-face 'success-face
   eval-sexp-fu-flash-duration 0.3
   eval-sexp-fu-flash-error-face 'error-face
   eval-sexp-fu-flash-error-duration 0.5
   cider-error-highlight-face 'error-face)

  (set-face-attribute 'cider-result-overlay-face nil :foreground "#66FF00" :weight 'bold :background nil)
  (set-face-attribute 'cider-fringe-good-face nil :foreground "#00CC53")

  (define-clojure-indent
    (defroutes 'defun)
    (match 'defun)
    (for-all 'defun)
    (letk 'defun)
    (specify 'defun)
    (specify! 'defun)
    (ANY 2)
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
    (reg-fx 'defun)
    )

  ;; Doctronic specific component keybindings
  (define-key cider-mode-map      (kbd "C-c i") (util/all-buffers-saved (util-clojure/cider-cmd "(user/system-restart!)")))
  (define-key cider-repl-mode-map (kbd "C-c i") (util/all-buffers-saved (util-clojure/cider-cmd "(user/system-restart!)")))

  (define-key cider-mode-map      (kbd "C-c k") (util/all-buffers-saved (util-clojure/cider-cmd "(user/system-stop!)")))
  (define-key cider-repl-mode-map (kbd "C-c k") (util/all-buffers-saved (util-clojure/cider-cmd "(user/system-stop!)")))

  (define-key cider-mode-map      (kbd "C-c I") (util-clojure/cider-cmd "(do (require 'clojure.tools.namespace.repl) (clojure.tools.namespace.repl/refresh-all))"))
  (define-key cider-repl-mode-map (kbd "C-c I") (util-clojure/cider-cmd "(do (require 'clojure.tools.namespace.repl) (clojure.tools.namespace.repl/refresh-all))"))

  (define-key cider-mode-map      (kbd "C-c f") (util/all-buffers-saved (util-clojure/cider-cmd "(user/fig-init)")))
  (define-key cider-repl-mode-map (kbd "C-c f") (util/all-buffers-saved (util-clojure/cider-cmd "(user/fig-init)")))

  (define-key cider-mode-map      (kbd "C-c F") (util/all-buffers-saved (util-clojure/cider-cmd "(do (user/system-restart!) (user/fig-init))")))
  (define-key cider-repl-mode-map (kbd "C-c F") (util/all-buffers-saved (util-clojure/cider-cmd "(do (user/system-restart!) (user/fig-init))")))

  ;; TODO: Keybindings
  :bind
  (("C-c C-d" . cider-doc)
   ("C-c C-r" . cider-eval-region)
   ("C-c M-o" . cider-repl-clear-buffer))

  :diminish
  cider-mode

  ;; Add more
 )

(provide 'setup__cider)
