# .emacs.d

Persönliche Emacs-Konfiguration, Schwerpunkt Clojure/ClojureScript (CIDER, clojure-lsp), dazu TypeScript, Lua, SCSS/Sass, YAML, Markdown, Groovy.

## Voraussetzungen

- Emacs 29 oder neuer (Ziel: 31.x), macOS, Windows oder Linux
- Netzzugriff auf GNU ELPA, NonGNU ELPA und MELPA – fehlende Pakete installiert `use-package` beim ersten Start
- Externe Werkzeuge (optional, je nach Sprache):

| Werkzeug | Wofür |
|---|---|
| `git` | magit, consult-git-grep, projectile |
| `clojure-lsp` | lsp für Clojure (enthält clj-kondo) |
| `clj-kondo` | flycheck-Linting, nur wenn kein `clojure-lsp` installiert ist |
| `typescript-language-server` + `node` | lsp für TypeScript |
| `pandoc` | Markdown-Vorschau/-Export |
| C-Compiler | tree-sitter-Grammatiken (`M-x my/install-typescript-grammars`) |

### macOS

- PATH der Login-Shell wird per `exec-path-from-shell` übernommen (Homebrew-Tools werden auch beim Start aus dem Dock gefunden).
- Linke Option = Meta, rechte Option tippt Sonderzeichen (`@ { } [ ] | \ ~`).
- Optional `brew install coreutils`: dired nutzt dann GNU `ls`.

### Windows

- Git for Windows im PATH (magit ist auch unter Windows aktiv).
- projectile indiziert dort mit `hybrid` (kein GNU `find` nötig).

## Aufbau

| Datei | Inhalt |
|---|---|
| `early-init.el` | GC-Tuning beim Start, UI-Leisten ohne Flackern abschalten |
| `init.el` | Load-Path, `custom-file`, lädt `config/config.el` |
| `config/config.el` | Lädt alle `setup__*.el`-Module |
| `config/setup__platform.el` | macOS-/Windows-spezifische Einstellungen |
| `config/setup__*.el` | Ein Modul pro Paket bzw. Thema |
| `config/util.el` | Hilfsfunktionen |
| `config/snippets/` | yasnippet-Snippets |

Lokaler Zustand (`custom.el`, `elpa/`, `eln-cache/`, `tree-sitter/`, Historie, Caches) ist per `.gitignore` ausgeschlossen. Customize schreibt nach `custom.el`, nicht in `init.el`.

## Wichtige Tastenbelegungen

| Taste | Befehl |
|---|---|
| `M-x` | Befehle (vertico + orderless + marginalia) |
| `C-s` | `consult-line` |
| `C-x b` | `consult-buffer` |
| `M-g i` | `consult-imenu` |
| `C-c gg` / `C-c gs` | `consult-git-grep` / mit markiertem Text |
| `C-c p` | projectile-Präfix |
| `C-c ms` `ml` `mb` `mp` `mP` | magit status / log / blame / push / pull |
| `C-c km` / `C-c ko` | smerge: oberen / unteren Stand übernehmen |
| `C-c ! n` `p` `l` | flycheck: nächster / vorheriger Fehler / Liste |
| `C-c l` | lsp-Präfix |
| `C-c h`, `C-c C-h n`/`p` | highlight-symbol |
| `M-e` | expand-region |
| `M-1` / `M-2` / `M-3` | multiple-cursors: nächstes / überspringen / alle |
| `C-c cc` / `C-c ji` / `C-c q` | CIDER connect / jack-in / quit |
| `C-c C-r` | clj-refactor-Präfix |
| `C-c i` `k` `I` `f` `F` | REPL: system-restart / -stop / refresh-all / fig-init / beides (speichert vorher alle Buffer) |
| `C-c jt` / `C-c jb` | Anfang / Ende des Buffers |

## Nach Updates

Nicht mehr verwendete Pakete einmalig entfernen (`M-x package-delete`): `ido-completing-read+`, `ido-vertical-mode`, `crm-custom`, `smex`, `counsel`, `swiper`, `magit-popup`, `scss-mode`, `tide`, `emojify`, `company-quickhelp`, `clojure-mode-extra-font-locking`. Insbesondere `scss-mode` überdeckt sonst das eingebaute `scss-mode`.
