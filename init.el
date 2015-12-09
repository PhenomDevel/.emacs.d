;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Basic Stuff

(add-to-list 'load-path "~/.emacs.d/customizations")


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Require Stuff
(require 'setup--package)
(require 'util)

;; UI Stuff
(require 'setup--elscreen)
(require 'setup--navigation)
(require 'setup--ui)
(require 'setup--zenburn)
(require 'setup--rainbow-delimiters)
(require 'setup--minor-mode-line)
(require 'setup--org)
(require 'setup--editing)
(require 'setup--shell-integration)
(require 'setup--smex)
(require 'setup--highlight-symbol)

;; Other Stuff
(require 'setup--misc)
(require 'setup--elisp-editing)
(require 'setup--clojure)
(require 'setup--js)
(require 'setup--ido)
(require 'setup--company)
(require 'cider)
(require 'setup--magit)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load Custom Code

(load "component-snippets.el")










(add-hook 'cider-mode-hook 'electric-indent-mode)















(add-to-list 'auto-mode-alist '("\\.rest\\'" . restclient-mode))




;; Poping-up contextual documentation
(eval-after-load "cider"
  '(define-key cider-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





										   
										  

(global-aggressive-indent-mode 1)

;; magit windows specific config - ssh-agency package required
(setenv "GIT_ASKPASS" "git-gui--askpass")
(setenv "SSH_ASKPASS" "git-gui--askpass")









