(use-package lsp-mode
  :ensure
  t

  :hook
  (lsp-mode . lsp-diagnostics-mode)
  (lsp-mode . lsp-enable-which-key-integration)
  (lsp-mode . lsp-completion-mode)
  (prog-mode . lsp-deferred)

  :custom
  (lsp-keymap-prefix "C-c l")
  (lsp-completion-provider :capf)
  (lsp-log-io nil)
  (lsp-keep-workspace-alive nil)
  (lsp-idle-delay 0.5)
  (lsp-inlay-hint-enable t)

  (lsp-enable-xref t)
  (lsp-auto-configure t)
  (lsp-eldoc-enable-hover t)
  (lsp-enable-dap-auto-configure t)
  (lsp-enable-file-watchers nil)
  (lsp-enable-folding nil)
  (lsp-enable-imenu t)
  (lsp-enable-on-type-formatting t)
  (lsp-enable-suggest-server-download t)
  (lsp-enable-symbol-highlighting t)
  (lsp-enable-text-document-color nil)

  (lsp-completion-enable t)
  (lsp-completion-enable-additional-text-edit t)
  (lsp-enable-snippet t)
  (lsp-completion-show-kind t)

  (lsp-headerline-breadcrumb-enable nil)
  (lsp-headerline-breadcrumb-enable-diagnostics nil)

  (lsp-modeline-code-actions-enable t)
  (lsp-modeline-diagnostics-enable t)
  (lsp-modeline-workspace-status-enable t)
  (lsp-signature-doc-lines 1)
  (lsp-eldoc-render-all nil)
  (lsp-semantic-tokens-enable t)
  (lsp-warn-no-matched-clients nil))

(use-package lsp-ui
  :ensure
  t

  :after
  lsp-mode

  :custom
  (lsp-ui-sideline-enable nil)
  (lsp-ui-sideline-show-hover nil)
  (lsp-ui-sideline-ignore-duplicate t)
  (lsp-ui-sideline-show-code-actions nil)
  (lsp-ui-sideline-show-diagnostics nil)
  (lsp-ui-sideline-show-symbol nil)
  (lsp-ui-sideline-diagnostic-max-lines 20)
  (lsp-ui-doc-enable t)
  (lsp-ui-doc-show-with-cursor nil)
  (lsp-ui-doc-show-signature t)
  (lsp-ui-doc-use-childframe t)
  (lsp-ui-doc-position 'at-point))

(use-package flymake
  :hook
  ((prog-mode text-mode) . flymake-mode)

  :custom
  (flymake-show-diagnostics-at-end-of-line 'short)
  (flymake-fringe-indicator-position 'right-fringe))

(provide 'setup__lsp)
