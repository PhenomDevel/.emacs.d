(use-package
  org

  :mode
  ("\\.orgr\\'" . org-mode)

  :commands
  (org-capture-todo)

  :init
  (setq-default
   org-gtd-firectory "~/.gtd/"
   org-gtd-todos-file "todos.org"

   org-tag-alist
   '(("MISC" . ?m)
     ("EMACS" . ?e)
     ("PRIVATE" . ?p))

   org-todo-keywords
   '((sequence "TODO(t)" "|" "DONE(d)" "CANCELED(c)"))

   org-capture-templates
   '(("t" "TODO" entry (file+headline org-gtd-todos-file "Inbox")
      "* TODO %? %i %^g\n:ADDED: %U\n:END:")))

  (defun org-capture-todo ()
    (interactive)
    (org-capture nil "t")))

(provide 'setup__org-mode)
