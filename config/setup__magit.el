;; Use git with a graphical interface within emacs

(defun magit-push-to-gerrit-local-branch-or-commit-to-branch (source target)
  (interactive
   (let ((source (magit-read-local-branch-or-commit "Push"))
         (target (magit-read-local-branch-or-commit "On")))
     (list source target)))
  (magit-git-command-topdir (concat "git push origin " source (concat ":refs/for/" target))))

(defun magit-push-to-gerrit-local-branch-or-commit (source)
  (interactive
   (let ((source (magit-read-local-branch-or-commit "Push")))
     (list source)))
  (magit-git-command-topdir (concat "git push origin " source (concat ":refs/for/" source))))

(defun magit-push-to-gerrit-current-branch ()
  (interactive)
  (magit-push-to-gerrit-local-branch-or-commit (magit-get-current-branch)))

(transient-append-suffix 'magit-push "e"
  '("P" "Push current branch to Gerrit" magit-push-to-gerrit-current-branch))

(transient-append-suffix 'magit-push "e"
  '("U" "Push branch / commit to Gerrit" magit-push-to-gerrit-local-branch-or-commit))

(transient-append-suffix 'magit-push "e"
  '("A" "Push branch / commit to Gerrit on branch" magit-push-to-gerrit-local-branch-or-commit-to-branch))

(use-package
  magit

  :ensure t

  :defer t

  :commands
  (magit-status magit-log-all magit-blame-addition)

  :bind
  (("C-c ms" . magit-status)
   ("C-c ml" . magit-log-all)
   ("C-c mb" . magit-blame-addition)
   ("C-c mp" . magit-push)
   ("C-c mP" . magit-pull))

  :config
  (custom-set-faces
   '(magit-diff-added ((t (:background "#007700" :foreground "#FFFFFF"))))
   '(magit-diff-added-highlight ((t (:background "#007700" :foreground "#FFFFFF"))))
   '(magit-diff-removed ((t (:background "#770000" :foreground "#FFFFFF"))))
   '(magit-diff-removed-highlight ((t (:background "#770000" :foreground "#FFFFFF")))))


  ;; Add more
  )


(provide 'setup__magit)
