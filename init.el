;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Site lisp

(add-to-list 'load-path "~/.emacs.d/site-lisp")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Packages

(require 'setup--package)
(require 'util--package)

(util--package/install-packages! '(dash
                                   elscreen
                                   smex
                                   company
                                   ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Basics

(require 'util)
(require 'setup--osx)
(require 'setup--sane-defaults)
(require 'setup--appearance)
(require 'setup--scrolling)

(util/global-set-keys
  "C-w"     'backward-kill-word
  "C-h"     'backward-delete-char-untabify
  "C-v"     'set-mark-command
  "M-\\"    'help
  "M-0"     'back-to-indentation
  "C-x C-s" 'util/save-all-buffers!
  "M-j"     'util/join-line
  "M-o"     'util/window-toggle
  "M-;"     'util/comment
  "M-l"     'util/switch-to-previous-buffer)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Quickly open files

(util/global-set-keys
  "M-RET e" (util/open-file "~/.emacs.d/init.el"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Elscreen

(require 'setup--elscreen)
(require 'util--elscreen)

(util/global-set-keys
  "M-P" 'elscreen-previous
  "M-N" 'elscreen-next
  "M-X" 'elscreen-kill
  "M-C" 'util--elscreen/create)

(require 'setup--smex)

(util/global-set-keys
  "M-x" 'setup--smex/run-smex)
