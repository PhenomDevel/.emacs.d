;;; package --- Smex

;;; Commentary:
;; Smex is a M-x enhancement for Emacs.  Built on top of Ido
;; it provides a convenient interface to your recently and most
;; frequently used commands.  And to all the other commands, too.

;;; Code:
(use-package
 smex

 :init
 (smex-initialize)

 :ensure t

 :config

 :bind
 (("M-x" . smex))

 ;; Add more
 )

(provide 'setup__smex)

;;; setup__smex.el ends here
