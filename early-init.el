;;; early-init.el --- Loaded before init.el and the first frame -*- lexical-binding: t -*-

;; No GC during startup; afterwards a value that also suits lsp-mode
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 64 1024 1024)
                  gc-cons-percentage 0.1)))

;; Disable UI chrome before the first frame is drawn (no flicker).
;; The macOS menu bar is global, so it stays.
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)
(push '(horizontal-scroll-bars) default-frame-alist)
(setq tool-bar-mode nil
      scroll-bar-mode nil)

(unless (memq initial-window-system '(ns mac))
  (push '(menu-bar-lines . 0) default-frame-alist)
  (setq menu-bar-mode nil))

(setq frame-inhibit-implied-resize t
      inhibit-startup-screen t)

(setq native-comp-async-report-warnings-errors 'silent)

;;; early-init.el ends here
