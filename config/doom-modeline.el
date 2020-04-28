(require 'doom-modeline)
(doom-modeline-mode 1)
(custom-set-faces
 '(mode-line ((t (:family "monospace" :height 1.0))))
 '(mode-line-inactive ((t (:family "monospace" :height 1.0)))))
(setq doom-modeline-vcs-max-length 128)
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-minor-modes t)
(setq doom-modeline-modal-icon t)
(setq doom-modeline-minor-modes t)
(doom-modeline-def-modeline 'main
  '(bar workspace-name window-number modals matches buffer-info remote-host buffer-position word-count minor-modes)
  '(objed-state misc-info persp-name debug indent-info process vcs checker))

(require 'diminish)

(after! company
  (diminish 'company-mode))

(after! ivy
  (diminish 'ivy-mode))

(after! yasnippet
  (diminish 'yas-minor-mode))

(after! undo-tree
  (diminish 'undo-tree-mode))

(after! git-gutter
  (diminish 'git-gutter-mode))

(after! whitespace
  (diminish 'whitespace-mode))

(after! which-key
  (diminish 'which-key-mode))

(after! ws-butler
  (diminish 'ws-butler-mode))

(after! flycheck
  (diminish 'flycheck-mode))

(after! gcmh
  (diminish 'gcmh-mode))

(after! better-jumper
  (diminish 'better-jumper-local-mode))

(after! evil-snipe
  (diminish 'evil-snipe-local-mode))

(after! eldoc
  (diminish 'eldoc-mode))

(after! outline
  (diminish 'outline-mode))

(after! vi-tilde-fringe
  (diminish 'vi-tilde-fringe-mode))

(after! evil-goggles
  (diminish 'evil-goggles-mode))

(after! projectile
  (diminish 'projectile-mode))

(after! persp-mode
  (diminish 'persp-mode))

(after! evil-escape
  (diminish 'evil-escape-mode))

(after! outline
  (diminish 'outline-minor-mode))

(after! dtrt-indent
  (diminish 'dtrt-indent-mode))

(after! clj-refactor
  (diminish 'clj-refactor-mode))
