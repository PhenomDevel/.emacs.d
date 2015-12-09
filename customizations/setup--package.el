(require 'package)

(dolist (source '(("melpa" . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives source t))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(paredit

    clojure-mode

    clojure-mode-extra-font-locking

    cider

    ido-ubiquitous

    smex

    projectile
    
    elscreen-persist
    
    rainbow-delimiters

    tagedit
    
    magit

    zenburn-theme))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'setup--package)
