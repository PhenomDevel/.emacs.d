;; Wird benötigt, weil in Emacs26 Variablen entfernt worden sind,
;; welche mit diesem Package wiederhergestelt werden bzw. Aliase erstellt werden auf die neuen Variablen
(require 'flymake-proc)

(use-package
  scss-mode

  :ensure t

  :mode
  ("\\.scss\\'" . scss-mode)

  :config
  (setq scss-compile-at-save nil
	css-indent-offset 2))


(provide 'setup__scss-mode)
