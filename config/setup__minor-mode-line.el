;; Custom minor mode line settings initially from: http://amitp.blogspot.de/2011/08/emacs-custom-mode-line.html
;; slightly modified!


;; Mode line setup
(setq-default
 mode-line-format
 '(;; Show marker for flycheck status
   (:eval
    (cond
     ((flycheck-has-current-errors-p 'error)
      (propertize " \u21af "
		  'face 'mode-line-error-face))
     ((flycheck-has-current-errors-p 'warning)
      (propertize " ! "
		  'face 'mode-line-warning-face))
     ((flycheck-has-current-errors-p 'info)
      (propertize " I "
		  'face 'mode-line-info-face))))

   (:propertize "%4l :" face mode-line-position-face)

   (:eval (propertize "%3c  " 'face
		      (if (>= (current-column) 80)
			  'mode-line-80col-face
			'mode-line-position-face)))


   ;; Sho shortened path
   (:propertize (:eval (shorten-directory default-directory 30))
                face mode-line-folder-face)

   ;; Show colored filename based on file status
   (:eval
    (cond (buffer-read-only
           (propertize "%b"
                       'face 'mode-line-filename-read-only-face))
          ((buffer-modified-p)
           (propertize "%b"
                       'face 'mode-line-filename-modified-face))
          (t (propertize "%b"
                         'face 'mode-line-filename-face))))

   ;; Show git status
   (vc-mode vc-mode)
   " %["

   ;; show major mode
   (:propertize "%m"
                face mode-line-mode-face)
   "%] ["

   ;; show minor modes
   (:eval (propertize (format-mode-line minor-mode-alist)
                      'face 'mode-line-minor-mode-face))
   (:propertize mode-line-process
                face mode-line-process-face)
   (global-mode-string global-mode-string)
   " ]    "))


;; Helper function
(defun shorten-directory (dir max-length)
  "Show up to `max-length' characters of a directory name `dir'."
  (let ((path (reverse (split-string (abbreviate-file-name dir) "/")))
        (output ""))
    (when (and path (equal "" (car path)))
      (setq path (cdr path)))
    (while (and path (< (length output) (- max-length 4)))
      (setq output (concat (car path) "/" output))
      (setq path (cdr path)))
    (when path
      (setq output (concat ".../" output)))
    output))

;; Extra mode line faces
(make-face 'mode-line-read-only-face)
(make-face 'mode-line-modified-face)
(make-face 'mode-line-folder-face)
(make-face 'mode-line-filename-face)
(make-face 'mode-line-filename-read-only-face)
(make-face 'mode-line-filename-modified-face)
(make-face 'mode-line-position-face)
(make-face 'mode-line-mode-face)
(make-face 'mode-line-minor-mode-face)
(make-face 'mode-line-process-face)
(make-face 'mode-line-80col-face)
(make-face 'mode-line-error-face)
(make-face 'mode-line-warning-face)
(make-face 'mode-line-info-face)


(set-face-attribute 'mode-line nil
                    :foreground "gray80" :background "#222"
                    :inverse-video nil
                    :box '(:line-width 1 :color "black" :style nil))

(set-face-attribute 'mode-line-inactive nil
                    :foreground "gray80" :background "gray20"
                    :inverse-video nil
                    :box '(:line-width 1 :color "gray20" :style nil))

(set-face-attribute 'mode-line-read-only-face nil
                    :inherit 'mode-line-face
                    :foreground "#4271ae"
                    :box '(:line-width 2 :color "#4271ae"))

(set-face-attribute 'mode-line-modified-face nil
                    :inherit 'mode-line-face
                    :foreground "#d10700"
                    :background "#ffffff"
                    :box '(:line-width 1 :color "#d10700"))

(set-face-attribute 'mode-line-folder-face nil
                    :inherit 'mode-line-face
                    :foreground "gray50")

(set-face-attribute 'mode-line-filename-face nil
                    :inherit 'mode-line-face
                    :foreground "#3ce000"
                    :weight 'bold)

(set-face-attribute 'mode-line-filename-modified-face nil
                    :inherit 'mode-line-face
                    :foreground "#f5da42"
                    :weight 'bold)

(set-face-attribute 'mode-line-filename-read-only-face nil
                    :inherit 'mode-line-face
                    :foreground "#d10700"
                    :weight 'bold)

(set-face-attribute 'mode-line-position-face nil
                    :inherit 'mode-line-face
                    :family "Arial" :height 100
                    :weight 'bold)

(set-face-attribute 'mode-line-mode-face nil
                    :inherit 'mode-line-face
                    :foreground "gray100")

(set-face-attribute 'mode-line-minor-mode-face nil
                    :inherit 'mode-line-mode-face
                    :foreground "gray45"
                    :height 100)

(set-face-attribute 'mode-line-process-face nil
                    :inherit 'mode-line-face
                    :foreground "#3ce000")

(set-face-attribute 'mode-line-80col-face nil
                    :inherit 'mode-line-position-face
                    :foreground "#f5da42"
		    :background "black"
		    )

(set-face-attribute 'mode-line-error-face nil
		    :inherit 'mode-line-face
                    :foreground "white"
		    :background "#d10700")

(set-face-attribute 'mode-line-warning-face nil
		    :inherit 'mode-line-face
                    :foreground "black"
		    :background "#f5da42")

(set-face-attribute 'mode-line-info-face nil
		    :inherit 'mode-line-face
		    :foreground "black"
		    :background "#3ce000")



(provide 'setup__minor-mode-line)
