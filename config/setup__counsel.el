;; Enhanced emacs core functions (mostly used for counsel-git-grep (:)

(use-package
 counsel

 :ensure t

 :commands
 (counsel-git-grep)

 ;; TODO: Keybindings
 :bind
 (("C-c gg" . counsel-git-grep))

 ;; Add more
 )

(provide 'setup__counsel)
