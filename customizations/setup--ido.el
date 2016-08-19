(ido-mode 1)
(ido-everywhere 1)
(ido-vertical-mode 1)
(set-default 'imenu-auto-rescan t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ido Ubiquitous + crm-custom-mode
;; https://github.com/DarwinAwardWinner/crm-custom
(require 'ido-ubiquitous)
(require 'crm-custom)
(ido-ubiquitous-mode 1)
(crm-custom-mode 1)


(add-hook 'ido-setup-hook
          (lambda ()
            (util/define-keys ido-file-completion-map
                                        ;                              "~"   'ido--util/home
                              "C-w" 'ido-delete-backward-updir)

            (util/define-keys ido-common-completion-map
                              "SPC" 'ido-restrict-to-matches
                              "C-j" 'ido-next-match
                              "C-k" 'ido-prev-match)))

(provide 'setup--ido)
