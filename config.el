;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq org-directory "~/org/")

; Configure each key
(setq which-key-idle-delay 0.01)
(setq which-key-idle-secondary-delay 0.01)

(load-file "~/.doom.d/config/appearance.el")
(load-file "~/.doom.d/config/auto-complete.el")
(load-file "~/.doom.d/config/cider.el")
(load-file "~/.doom.d/config/cljr.el")
(load-file "~/.doom.d/config/clojure-pretty-symbols.el")
(load-file "~/.doom.d/config/doom-modeline.el")
(load-file "~/.doom.d/config/esc.el")
(load-file "~/.doom.d/config/font.el")
(load-file "~/.doom.d/config/keybindings.el")
(load-file "~/.doom.d/config/treemacs.el")
