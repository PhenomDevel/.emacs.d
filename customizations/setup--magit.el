(require 'util)


(util/global-set-keys
 "C-c ms" 'magit-status
 "C-c ml" 'magit-log-all
 "C-c mb" 'magit-blame-addition
 "C-c mp" '(lambda () (interactive) (magit-push-current "origin/master" nil)))

(custom-set-faces
 '(magit-diff-added ((t (:background "#007700" :foreground "#FFFFFF"))))
 '(magit-diff-added-highlight ((t (:background "#007700" :foreground "#FFFFFF"))))
 '(magit-diff-removed ((t (:background "#770000" :foreground "#FFFFFF"))))
 '(magit-diff-removed-highlight ((t (:background "#770000" :foreground "#FFFFFF")))))

(provide 'setup--magit)
