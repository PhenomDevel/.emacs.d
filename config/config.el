;; -*- lexical-binding: t -*-
;; Packages are activated before init.el (`package-enable-at-startup');
;; use-package :ensure installs missing ones and refreshes archives on demand.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)



;; =============================================================================
;; Requires
;; =============================================================================
;; Basics

(require 'use-package)
(require 'setup__platform)
(require 'setup__use-package)
(require 'setup__completion)
(require 'setup__multiple-cursors)
(require 'setup__fullframe)
(require 'setup__which-key)
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

(require 'setup__smerge)
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
(require 'setup__typescript)
;;
(require 'setup__lsp)
;;
;;
;;;; =============================================================================
;;;; Appeareance
;;
(require 'setup__theme)
(require 'setup__emacs)
(require 'setup__minor-mode-line)


;;
(provide 'config)
;;
;;(setq debug-on-error t)

;;
