(setq doom-theme 'doom-vibrant)


(use-package! rainbow-identifiers
  :init
  (setq rainbow-identifiers-cie-l*a*b*-saturation 60
        rainbow-identifiers-choose-face-function 'rainbow-identifiers-cie-l*a*b*-choose-face))
(add-hook 'prog-mode-hook 'rainbow-identifiers-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)


(setq display-line-numbers-type t)


(add-to-list 'initial-frame-alist '(fullscreen . maximized))
; (set-frame-parameter nil 'undecorated t)
; (add-to-list 'default-frame-alist '(undecorated . t))
