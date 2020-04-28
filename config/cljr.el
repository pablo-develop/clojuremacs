(require 'clj-refactor)
(use-package! clj-refactor)
(defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)
