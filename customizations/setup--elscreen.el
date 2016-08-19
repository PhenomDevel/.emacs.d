;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Init


(elscreen-start)

(elscreen-toggle-display-tab)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keybindings

(util/global-set-keys
 "C-c C-s +" 'elscreen-create
 "C-c C-s -" 'elscreen-kill
 "C-c C-s p" 'elscreen-previous
 "C-c C-s n" 'elscreen-next
 "C-c C-s r" 'elscreen-screen-nickname)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Provide

(provide 'setup--elscreen)
