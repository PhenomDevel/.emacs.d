;; -*- lexical-binding: t -*-
;; use-package is built in since Emacs 29

(require 'use-package)

(setq use-package-always-ensure t
      use-package-verbose nil)

(use-package diminish)

(provide 'setup__use-package)
