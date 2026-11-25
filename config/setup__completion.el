;; -*- lexical-binding: t -*-
;; Minibuffer completion: vertico + orderless + marginalia + consult

(use-package vertico
  :custom
  (vertico-cycle t)
  (vertico-count 15)

  :config
  (vertico-mode 1))

;; ido-like directory navigation; ships with vertico, hence no package of its own
(use-package vertico-directory
  :ensure nil

  :after vertico

  :bind
  (:map vertico-map
        ("RET"   . vertico-directory-enter)
        ("DEL"   . vertico-directory-delete-char)
        ("M-DEL" . vertico-directory-delete-word)
        ("C-w"   . vertico-directory-delete-word))

  :hook
  (rfn-eshadow-update-overlay . vertico-directory-tidy))

;; Space-separated terms in any order
(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles partial-completion)))))

(use-package marginalia
  :config
  (marginalia-mode 1))

;; Persist minibuffer history (M-x ranking used to come from smex)
(use-package savehist
  :ensure nil

  :config
  (savehist-mode 1))

(setq-default imenu-auto-rescan t)

(defun my-region-text ()
  (when (use-region-p)
    (buffer-substring-no-properties (region-beginning) (region-end))))

(defun my-git-grep ()
  "`consult-git-grep' seeded with the active region."
  (interactive)
  (let ((text (my-region-text)))
    (deactivate-mark)
    (consult-git-grep nil text)))

(use-package consult
  :bind
  (("C-s"    . consult-line)
   ("C-c gg" . consult-git-grep)
   ("C-c gs" . my-git-grep)
   ("C-x b"  . consult-buffer)
   ("M-g i"  . consult-imenu)))

(provide 'setup__completion)
