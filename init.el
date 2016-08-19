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
(require 'util--zoom)
(require 'setup--rainbow-delimiters)
(require 'setup--zenburn)
(require 'setup--minor-mode-line)
(require 'setup--org)
(require 'setup--editing)
(require 'setup--shell-integration)
(require 'setup--smex)
(require 'setup--highlight-symbol)
(require 'setup--sane-defaults)

;; Other Stuff
(require 'setup--js)
(require 'setup--ido)
(require 'setup--company)
(require 'setup--magit)
(require 'setup--yasnippet)
(require 'setup--diminish)
(require 'setup--paren)
(require 'setup--multiple-cursors)
(require 'setup--hydra)
(require 'setup--misc)
(require 'setup--elisp-editing)
(require 'setup--clojure)
(require 'setup--clojure-refactor)
(require 'setup--aggressive-indent)
(require 'setup--fullframe)

;; CLJS

(require 'setup--cider)
(require 'setup--figwheel)


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load Custom Code

;; TODO Cleanup
(load "component-snippets.el")


(set-face-attribute 'cider-error-highlight-face nil :foreground "#FF0033" :underline nil :weight 'bold)

(defun my-delete-whitespace-except-one ()
  "Deletes all whitespace chars following point except one space."
  (interactive)
  (just-one-space -1))

(defun switch-delete-character (arg)
  (interactive "P")
  (pcase (prefix-numeric-value arg)
    (1 (delete-char 1))
    (4 (my-delete-whitespace-except-one))
    (other (delete-char other))))

(define-key paredit-mode-map (kbd "C-d") 'switch-delete-character)

(util/global-set-keys "M-e" 'er/expand-region)

(eval-after-load "paxedit"
  '(progn (define-key paxedit-mode-map (kbd "M-<right>") 'paxedit-transpose-forward)
          (define-key paxedit-mode-map (kbd "M-<left>") 'paxedit-transpose-backward)
          (define-key paxedit-mode-map (kbd "M-<up>") 'paxedit-backward-up)
          (define-key paxedit-mode-map (kbd "M-<down>") 'paxedit-backward-end)
          (define-key paxedit-mode-map (kbd "M-b") 'paxedit-previous-symbol)
          (define-key paxedit-mode-map (kbd "M-f") 'paxedit-next-symbol)
          (define-key paxedit-mode-map (kbd "C-u C-c") 'paxedit-copy)
          (define-key paxedit-mode-map (kbd "C-&") 'paxedit-kill)
          (define-key paxedit-mode-map (kbd "C-*") 'paxedit-delete)
          (define-key paxedit-mode-map (kbd "C-^") 'paxedit-sexp-raise)
          ;; Symbol backward/forward kill
          (define-key paxedit-mode-map (kbd "C-w") 'paxedit-backward-kill)
          (define-key paxedit-mode-map (kbd "M-w") 'paxedit-forward-kill)
          ;; Symbol manipulation
          (define-key paxedit-mode-map (kbd "M-u") 'paxedit-symbol-change-case)
          (define-key paxedit-mode-map (kbd "C-S-c") 'paxedit-symbol-copy)
          (define-key paxedit-mode-map (kbd "C-#") 'paxedit-symbol-kill)))

(define-key projectile-mode-map (kbd "C-S-s") 'counsel-git-grep)
