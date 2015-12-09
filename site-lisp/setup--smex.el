

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Lazy init (http://www.emacswiki.org/emacs/?Smex)

(defun setup--smex/run-smex ()
  (interactive)
  (or (boundp 'smex-cache)
      (smex-initialize))
  (smex))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'setup--smex)
