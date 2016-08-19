
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helper
;; Inspired by from http://emacs-fu.blogspot.de/2008/12/zooming-inout.html

(defun util--zoom/zoom (n)
  (set-face-attribute 'default (selected-frame) :height
                      (+ (face-attribute 'default :height) (* (if (> n 0) 1 -1) 10))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interaction

(defun util--zoom/default ()
  (interactive)
  (set-face-attribute 'default nil :font "Ubuntu Mono" :height 200))

(defun util--zoom/inc ()
  (interactive)
  (util--zoom/zoom 1))

(defun util--zoom/dec ()
  (interactive)
  (util--zoom/zoom -1))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'util--zoom)
