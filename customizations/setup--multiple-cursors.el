(require 'multiple-cursors)

(global-set-key (kbd "C-4") 'multiple-cursors-mode)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C-1") 'mc/mark-next-like-this)
(global-set-key (kbd "C-2") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-3") 'mc/mark-all-like-this)
(global-set-key (kbd "C-!") 'mc/mark-all-like-this)

(provide 'setup--multiple-cursors)
