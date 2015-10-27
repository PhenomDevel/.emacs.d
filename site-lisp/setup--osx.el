

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; OSX specific settings

(when (equal system-type 'darwin)
  ;; Adjust keys
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))

(provide 'setup--osx)
