(require 'util)


(util/global-set-keys
 "C-c ms" 'magit-status
 "C-c ml" 'magit-log-all)

(provide 'setup--magit)
