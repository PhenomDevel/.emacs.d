;; -*- lexical-binding: t -*-
;; General settings for emacs (menu/tool/scroll bars: early-init.el)

(blink-cursor-mode 0)
(setq ring-bell-function 'ignore)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(global-hl-line-mode 1)
(set-face-background 'hl-line "#555555")
(set-face-foreground 'highlight 'unspecified)
(set-face-attribute 'region nil :background "#777")

(setq show-paren-delay 0)
(set-face-attribute 'show-paren-match nil :background "#FF0000")

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
(setq use-short-answers t)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; =============================================================================
;; Set some global bindings
(global-set-key (kbd "C-c jt") 'beginning-of-buffer)
(global-set-key (kbd "C-c jb") 'end-of-buffer)

;; Do not create lock files. They just clutter the disk
(setq create-lockfiles nil
      auto-save-default nil
      make-backup-files nil)

(setq-default truncate-lines t)

;; Bigger process read buffer, mainly for lsp-mode
(setq read-process-output-max (* 1024 1024))

(setq initial-major-mode 'emacs-lisp-mode)

(set-face-attribute 'default nil
		    :family "Cascadia Mono"
		    :height 110
		    :weight 'normal
		    :width 'normal)

(provide 'setup__emacs)
