;; -*- lexical-binding: t -*-

(defvar my/org-gtd-directory "~/.gtd/")

(defvar my/org-gtd-todos-file (expand-file-name "todos.org" my/org-gtd-directory))

(defun org-capture-todo ()
  (interactive)
  (org-capture nil "t"))

(use-package org
  :ensure nil

  :commands
  (org-capture)

  :init
  (setq-default
   org-tag-alist
   '(("MISC" . ?m)
     ("EMACS" . ?e)
     ("PRIVATE" . ?p))

   org-todo-keywords
   '((sequence "TODO(t)" "|" "DONE(d)" "CANCELED(c)"))

   org-capture-templates
   `(("t" "TODO" entry (file+headline ,my/org-gtd-todos-file "Inbox")
      "* TODO %? %i %^g\n:PROPERTIES:\n:ADDED: %U\n:END:"))))

(provide 'setup__org-mode)
