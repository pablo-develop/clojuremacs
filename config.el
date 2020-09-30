;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq org-directory "~/org/")

;; order matters!!
(load-file "~/.doom.d/config/appearance.el")
(load-file "~/.doom.d/config/auto-complete.el")
(load-file "~/.doom.d/config/cljr.el")
(load-file "~/.doom.d/config/clojure-pretty-symbols.el")
(load-file "~/.doom.d/config/doom-modeline.el")
(load-file "~/.doom.d/config/esc.el")
(load-file "~/.doom.d/config/font.el")
(load-file "~/.doom.d/config/key-delay.el")
(load-file "~/.doom.d/config/keybindings.el")
(load-file "~/.doom.d/config/treemacs.el")

(load-file "~/.doom.d/config/cider.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(line-spacing 0.4)
 '(safe-local-variable-values
   '((cider-ns-refresh-after-fn . "integrant.repl/resume")
     (cider-ns-refresh-before-fn . "integrant.repl/suspend"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:family "monospace" :height 1.0))))
 '(mode-line-inactive ((t (:family "monospace" :height 1.0)))))
