(setq org-default-notes-file "~/Private/todos.org"
      org-capture-templates '(("t" "TODO" entry (file+headline org-default-notes-file "TODOs") "* TODO %t %?")))

(provide 'setup__org-mode)
