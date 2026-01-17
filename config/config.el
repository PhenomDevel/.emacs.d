(require 'package)

(setq package-archives
      '(
	("melpa-stable" . "https://stable.melpa.org/packages/")
	("melpa" . "http://melpa.org/packages/")
	("gnu" . "http://elpa.gnu.org/packages/")
        ))

(setq package-enable-at-startup nil)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; NOTE: Packages which should always be loaded
(defvar default-packages
  '(use-package
     diminish

     ))

(dolist (p default-packages)
  (unless (package-installed-p p)
    (package-refresh-contents)
    (package-install p)))


;; =============================================================================
;; Requires
;; =============================================================================
;; Basics

(require 'use-package)
(require 'setup__use-package)
(require 'setup__swiper)
(require 'setup__crm-custom)
(require 'setup__ido-completing-read+)
(require 'setup__ido-vertical-mode)
(require 'setup__ido)
(require 'setup__multiple-cursors)
(require 'setup__counsel)
(require 'setup__smex)
(require 'setup__fullframe)
;; (require 'setup__which-key)
(require 'setup__rainbow-mode)
(require 'setup__company)
(require 'setup__org-mode)
(require 'setup__simple)
;; (require 'setup__treemacs)
;;
;;
;;;; =============================================================================
;;;; Project Helper
;;
(require 'setup__projectile)
(require 'setup__yasnippet)
(require 'setup__magit)
(require 'setup__magit-popup)
(require 'setup__smerge)
;; (require 'setup__linum)
;;
;;
;;;; =============================================================================
;;;; Programming
;;
(require 'setup__flycheck)
(require 'setup__highlight-symbol)
(require 'setup__rainbow-delimiters)
(require 'setup__cider)
(require 'setup__paxedit)
(require 'setup__clj-refactor)
(require 'setup__cider-eval-sexp-fu)
(require 'setup__expand-region)
(require 'setup__clojure-mode)
(require 'setup__paredit)
(require 'setup__sass-mode)
(require 'setup__markdown-mode)
(require 'setup__lua-mode)
(require 'setup__groovy-mode)
(require 'setup__yaml-mode)
(require 'setup__scss-mode)
;;
;; (require 'setup__lsp)
;;
;;
;;;; =============================================================================
;;;; Appeareance
;;
(require 'setup__emacs)
(require 'setup__theme)
(require 'setup__minor-mode-line)
;;
(provide 'config)
;;
;;(setq debug-on-error t)

;;
