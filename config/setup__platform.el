;; -*- lexical-binding: t -*-
;; OS-specific settings. Loaded before setup__use-package, hence explicit :ensure.

;; =============================================================================
;; macOS

;; GUI Emacs started from Dock/Finder doesn't inherit the shell PATH
;; (e.g. /opt/homebrew/bin), so clojure-lsp, node, pandoc etc. are missing.
(when (and (eq system-type 'darwin)
           (or (memq window-system '(mac ns)) (daemonp)))
  (use-package exec-path-from-shell
    :ensure t

    :custom
    (exec-path-from-shell-arguments '("-l"))
    (exec-path-from-shell-variables '("PATH" "MANPATH" "JAVA_HOME"))

    :config
    (exec-path-from-shell-initialize)))

(when (eq system-type 'darwin)
  ;; Left Option stays Meta; right Option types German layout characters (@ { } [ ] | \ ~)
  (setq mac-option-modifier 'meta
        mac-right-option-modifier 'none)

  ;; BSD ls lacks --dired; prefer GNU ls (brew install coreutils)
  (if-let* ((gls (executable-find "gls")))
      (setq insert-directory-program gls)
    (setq dired-use-ls-dired nil))

  (when (fboundp 'pixel-scroll-precision-mode)
    (pixel-scroll-precision-mode 1)))

;; =============================================================================
;; Windows

(when (eq system-type 'windows-nt)
  ;; Faster subprocess I/O (lsp-mode, magit)
  (setq w32-pipe-read-delay 0
        w32-pipe-buffer-size (* 64 1024))

  ;; Avoids stutter with fonts that have many glyphs
  (setq inhibit-compacting-font-caches t))

(provide 'setup__platform)
