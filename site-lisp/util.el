(require 'cl)
(require 'dash)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Buffers

(defun util/save-all-buffers! ()
  (interactive)
  (save-some-buffers t))

(defun util/all-buffers-saved (f)
  (lexical-let ((g f))
    (lambda ()
      (interactive)
      (util/save-all-buffers!)
      (funcall g))))

(defun util/switch-to-previous-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Windows

(setq util/window-toggle-direction 1)

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
  (let ((ms* (if (keymapp ms)
                 (list ms)
               ms)))

    (-each (-partition 2 xs)
      (lambda (x)
        (let ((k (car x))
              (f (cadr x)))
          (-each ms*
            (lambda (m)
              (define-key m (kbd k) f))))))))

(defun util/global-set-keys (&rest xs)
  (-each (-partition 2 xs)
    (lambda (x)
      (let ((k (car x))
            (f (cadr x)))
        (global-set-key (kbd k) f)))))

(defun util/global-unset-keys (&rest ks)
  (-each ks
    (lambda (k)
      (global-unset-key (kbd k)))))

(defun util/local-set-keys (&rest xs)
  (-each (-partition 2 xs)
    (lambda (x)
      (let ((k (car x))
            (f (cadr x)))
        (local-set-key (kbd k) f)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Misc

(defun util/join-line ()
  (interactive)
  (join-line -1))

(defun util/open-file (file)
  (lexical-let ((file file))
    (lambda ()
      (interactive)
      (find-file file))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'util)
