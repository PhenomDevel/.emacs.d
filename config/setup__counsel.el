;; Enhanced emacs core functions (mostly used for counsel-git-grep (:)

(defun my-region-text ()
  (if mark-active
      (buffer-substring-no-properties (region-beginning) (region-end))))

(defun my-git-grep ()
  (interactive)
  (let ((text (my-region-text)))
    (deactivate-mark)
    (counsel-git-grep text)))

(use-package
  counsel

  :ensure t

  :commands
  (counsel-git-grep)

  ;; TODO: Keybindings
  :bind
  (("C-c gg" . counsel-git-grep)
   ("C-c gs" . my-git-grep))

  ;; Add more
  )

(provide 'setup__counsel)
