;;; check-startup.el --- CI: load the config like a regular start -*- lexical-binding: t -*-
;; emacs --batch --init-directory=<repo> -l test/check-startup.el
;; --batch implies -q, so early-init, package activation and init are replayed here.

(load (locate-user-emacs-file "early-init.el") nil t)
(package-activate-all)
(load (locate-user-emacs-file "init.el") nil t)

;; Visit one file per configured mode so mode hooks and deferred packages load
(let ((dir (make-temp-file "emacs-ci" t)))
  (dolist (f '("a.clj" "b.cljs" "c.ts" "d.scss" "e.sass" "f.lua" "g.el"
               "h.yml" "README.md" "i.org" "Jenkinsfile"))
    (let ((path (expand-file-name f dir)))
      (write-region "" nil path nil 'silent)
      (with-current-buffer (find-file-noselect path)
        (message "ci: %-12s %s" f major-mode)))))

(message "ci: startup ok (Emacs %s, %s)" emacs-version system-type)
