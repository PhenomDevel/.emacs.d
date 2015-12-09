
(defun run-smex ()
  (interactive)
  (or (boundp 'smex-cache)
      (smex-initialize))
  (smex))

(global-set-key
 (kbd "M-x") 'run-smex)




(provide 'setup--smex)
