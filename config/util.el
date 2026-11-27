;; -*- lexical-binding: t -*-

(require 'cl-lib)
(require 'package)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Buffers

(defun util/save-all-buffers! ()
  (interactive)
  (save-some-buffers t))

(defun util/all-buffers-saved (f)
  "Return a command that saves all buffers, then calls F."
  (lambda ()
    (interactive)
    (util/save-all-buffers!)
    (funcall f)))

(defun util/switch-to-previous-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Windows

(defun util/toggle-maximize-buffer (&optional zoom)
  "Toggle between the selected window alone and the previous layout.
With prefix arg ZOOM, increase the text scale by ZOOM steps."
  (interactive (list (if current-prefix-arg
                         (prefix-numeric-value current-prefix-arg)
                       0)))
  (if (= 1 (length (window-list)))
      (progn
        (text-scale-set 0)
        (jump-to-register ?_))
    (window-configuration-to-register ?_)
    (delete-other-windows)
    (when (and zoom (/= zoom 0))
      (text-scale-increase zoom))))

(defvar util/window-toggle-direction 1)

(defun util/window-toggle ()
  (interactive)
  (other-window util/window-toggle-direction)
  (setq util/window-toggle-direction (* -1 util/window-toggle-direction)))

(defun util/split-and-switch-to-window-below ()
  (interactive)
  (split-window-below)
  (other-window 1))

(defun util/split-and-switch-to-window-right ()
  (interactive)
  (split-window-right)
  (other-window 1))

(defun util/kill-buffer-and-delete-window ()
  (interactive)
  (let* ((buffer (window-buffer))
         (buffer-window (get-buffer-window buffer))
         (buffer-process (get-buffer-process buffer)))

    (when buffer-process
      (set-process-query-on-exit-flag buffer-process nil))

    (kill-buffer buffer)
    (delete-window buffer-window)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Comments

(defun util/comment ()
  (interactive)
  (let ((beg (if (region-active-p) (region-beginning) (line-beginning-position)))
        (end (if (region-active-p) (region-end) (line-end-position))))

    (comment-or-uncomment-region beg end)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keys

(defun util/define-keys (ms &rest xs)
  "Bind key/command pairs XS in keymap or list of keymaps MS."
  (let ((maps (if (keymapp ms) (list ms) ms)))
    (cl-loop for (k f) on xs by #'cddr
             do (dolist (m maps)
                  (define-key m (kbd k) f)))))

(defun util/global-set-keys (&rest xs)
  (cl-loop for (k f) on xs by #'cddr
           do (global-set-key (kbd k) f)))

(defun util/global-unset-keys (&rest ks)
  (dolist (k ks)
    (global-unset-key (kbd k))))

(defun util/local-set-keys (&rest xs)
  (cl-loop for (k f) on xs by #'cddr
           do (local-set-key (kbd k) f)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Manage installed packages

(defun util--package/install-package! (pkg)
  (unless (package-installed-p pkg)
    (unless package-archive-contents
      (package-refresh-contents))
    (package-install pkg)))

(defun util--package/install-packages! (pkgs)
  (dolist (pkg pkgs)
    (util--package/install-package! pkg)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Misc

(defun util/join-line ()
  (interactive)
  (join-line -1))

(defun util/open-file (file)
  (lambda ()
    (interactive)
    (find-file file)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'util)
