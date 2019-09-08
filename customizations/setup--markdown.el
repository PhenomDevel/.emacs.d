(require 'markdown-mode+)

(defun my-set-markdown-mode ()
  (when (and (stringp buffer-file-name)
             (string-match "\\.md\\'" buffer-file-name))
    (insert "OK")))


(add-hook 'text-mode 'my-set-markdown-mode)


(provide 'setup--markdown)
