;; General settings for emacs
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(blink-cursor-mode 0)
(setq ring-bell-function 'ignore)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(global-hl-line-mode 1)
(set-face-background 'hl-line "#555555")
(set-face-foreground 'highlight nil)

;; Scroll with n Lines lookahead
(let ((n 5))
  (setq scroll-step 1)
  (setq scroll-conservatively n)
  (setq scroll-margin n))

(set-face-foreground 'font-lock-warning-face "#FFFF00")

;; Show some Words with custom style
(add-hook 'prog-mode-hook
          (lambda ()
            (font-lock-add-keywords nil '(("\\<\\(HACK\\|NOTE\\|FIXME\\|TODO\\|BUG\\|comment\\|INFO\\)"
                                           1 font-lock-warning-face t)))))

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; =============================================================================
;; Set some global bindings
(global-set-key (kbd "C-c jt") 'beginning-of-buffer)
(global-set-key (kbd "C-c jb") 'end-of-buffer)

;; Globally activate eldoc-mode
(global-eldoc-mode)

;; Do not create lock files. They just clutter the disk
(setq create-lockfiles nil
      auto-save-default nil
      make-backup-files nil)

(setq-default truncate-lines t)
(custom-set-variables '(truncate-lines t))

(setq initial-major-mode 'emacs-lisp-mode)

;; (dashboard-setup-startup-hook)

(provide 'setup__emacs)
