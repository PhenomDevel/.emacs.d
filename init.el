;;; init.el -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

;; Keep Custom (incl. `package-selected-packages') out of the versioned init.el
(setq custom-file (locate-user-emacs-file "custom.el"))

(require 'config)

(when (file-exists-p custom-file)
  (load custom-file nil 'nomessage))

(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'set-goal-column 'disabled nil)

;;; init.el ends here
