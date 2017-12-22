(require 'package)

(add-to-list 'package-archives
              '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(;; Appeareance

    ;; diminish
    rainbow-mode
    rainbow-delimiters
    zenburn-theme
    org-bullets
    org-beautify-theme
    highlight-symbol
    ido-vertical-mode


    ;; Clojure
    cider
    clojure-mode
    clojure-mode-extra-font-locking
    cider-eval-sexp-fu
    clj-refactor
    paxedit
    flycheck
    flycheck-pos-tip

    ;; Editing in general
    paredit
    multiple-cursors
    ;; aggressive-indent ;; NOTE deactivated for now
    expand-region

    ;; Search
    swiper
    ;; hydra
    projectile
    company
    company-quickhelp
    company-restclient
    counsel
    ido
    ido-completing-read+


    ;; Misc

    ;; dash
    restclient
    yasnippet
    smex
    ido-ubiquitous
    ;; crm-custom
    neotree
    fullframe
    which-key

    ;; Other Languages
    lua-mode
    scss-mode
    org
    sass-mode

    ;; Git interaction
    magit
    magit-popup

    ))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-refresh-contents)
    (package-install p)))

(provide 'setup--package)
