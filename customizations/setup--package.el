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

    cider-eval-sexp-fu

    dash

    lua-mode

    magit

    magit-popup

    multiple-cursors

    neotree

    paredit

    paxedit

    projectile

    rainbow-mode

    ido-ubiquitous

    restclient

    yasnippet

    smex

    projectile
    
    elscreen-persist
    
    rainbow-delimiters

    aggressive-indent

    company

    company-quickhelp

    company-restclient

    org

    org-bullets

    org-beautify-theme

    highlight-symbol

    ido

    ido-completing-read+

    ido-vertical-mode

    flycheck

    flycheck-pos-tip

    tagedit
    
    magit

    swiper

    zenburn-theme))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'setup--package)
