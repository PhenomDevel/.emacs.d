(add-to-list 'load-path "~/.emacs.d/config")
(require 'config)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(flycheck-popup-tip flycheck treemacs zenburn-theme which-key use-package smex sass-mode rainbow-mode rainbow-delimiters projectile pfuture paxedit markdown-mode magit-popup magit lua-mode ido-vertical-mode ido-completing-read+ ht highlight-symbol fullframe f expand-region diminish dashboard crm-custom counsel company clj-refactor cider-eval-sexp-fu))
 '(truncate-lines t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-added ((t (:background "#007700" :foreground "#FFFFFF"))))
 '(magit-diff-added-highlight ((t (:background "#007700" :foreground "#FFFFFF"))))
 '(magit-diff-removed ((t (:background "#770000" :foreground "#FFFFFF"))))
 '(magit-diff-removed-highlight ((t (:background "#770000" :foreground "#FFFFFF")))))
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'set-goal-column 'disabled nil)
