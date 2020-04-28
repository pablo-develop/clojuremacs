(setq doom-theme 'doom-vibrant)


(use-package! rainbow-identifiers
  :init
  (setq rainbow-identifiers-cie-l*a*b*-saturation 60
        rainbow-identifiers-choose-face-function 'rainbow-identifiers-cie-l*a*b*-choose-face))
(add-hook 'prog-mode-hook 'rainbow-identifiers-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook 'global-prettify-symbols-mode)


(setq display-line-numbers-type t)


(add-to-list 'initial-frame-alist '(fullscreen . maximized))
; (set-frame-parameter nil 'undecorated t)
; (add-to-list 'default-frame-alist '(undecorated . t))


(remove-hook '+doom-dashboard-functions 'doom-dashboard-widget-banner)

(doom/set-frame-opacity 0.95)
