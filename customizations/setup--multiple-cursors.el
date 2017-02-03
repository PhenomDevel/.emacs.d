(require 'multiple-cursors)

(global-set-key (kbd "M-4") 'multiple-cursors-mode)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "M-1") 'mc/mark-next-like-this)
(global-set-key (kbd "M-2") 'mc/skip-to-next-like-this)
(global-set-key (kbd "M-3") 'mc/mark-all-like-this)
(global-set-key (kbd "M-!") 'mc/mark-all-like-this)

(provide 'setup--multiple-cursors)
