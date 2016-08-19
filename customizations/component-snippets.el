;; -*- lexical-binding: t -*-
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


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-key cider-mode-map      (kbd "C-c i") (util/all-buffers-saved (util-clojure/cider-cmd "(user/system-restart!)")))
(define-key cider-repl-mode-map (kbd "C-c i") (util/all-buffers-saved (util-clojure/cider-cmd "(user/system-restart!)")))

(define-key cider-mode-map      (kbd "C-c k") (util/all-buffers-saved (util-clojure/cider-cmd "(user/system-stop!)")))
(define-key cider-repl-mode-map (kbd "C-c k") (util/all-buffers-saved (util-clojure/cider-cmd "(user/system-stop!)")))

(define-key cider-mode-map      (kbd "C-c I") (util-clojure/cider-cmd "(do (require 'clojure.tools.namespace.repl) (clojure.tools.namespace.repl/refresh-all))"))
(define-key cider-repl-mode-map (kbd "C-c I") (util-clojure/cider-cmd "(do (require 'clojure.tools.namespace.repl) (clojure.tools.namespace.repl/refresh-all))"))
