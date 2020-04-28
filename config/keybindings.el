(setq doom-localleader-key ",")


(sp-use-paredit-bindings)
(define-key global-map (kbd "M-\"") 'paredit-pair)
(define-key global-map (kbd "M-[") 'paredit-wrap-square)
(define-key global-map (kbd "M-{") 'paredit-wrap-curly)


(defun integrant-go ()
  (interactive)
  (message "Running (integrant.repl/go) ...")
  (cider-interactive-eval "(integrant.repl/go)"))

(defun integrant-reset ()
  (interactive)
  (message "Running (integrant.repl/reset) ...")
  (cider-interactive-eval "(integrant.repl/reset)"))

(defun integrant-halt ()
  (interactive)
  (message "Running (integrant.repl/halt) ...")
  (cider-interactive-eval "(integrant.repl/halt)"))
(global-set-key (kbd "<f1>") 'integrant-go)
(global-set-key (kbd "<f2>") 'integrant-reset)
(global-set-key (kbd "<f3>") 'integrant-halt)


(map! :leader "SPC" #'execute-extended-command)

(map! :leader "g s" #'magit-status)
(map! :leader "g b" #'magit-blame-addition)

(map! :leader "k"   #'evil-window-up)
(map! :leader "j"   #'evil-window-down)
(map! :leader "h"   #'evil-window-left)
(map! :leader "l"   #'evil-window-right)

(map! :leader "w /"  #'split-window-vertically)
(map! :leader "w -"  #'split-window-horizontally)

(map! :leader "w k"  #'windmove-swap-states-up)
(map! :leader "w j"  #'windmove-swap-states-down)
(map! :leader "w h"  #'windmove-swap-states-left)
(map! :leader "w l"  #'windmove-swap-states-right)

(map! :leader "/"   #'+default/search-project)
(map! :leader "*"   #'+default/search-project-for-symbol-at-point)
(map! :leader ";"   #'evilnc-comment-or-uncomment-lines)

(map! :map clojure-mode-map
      (:localleader
       :n  ";"     #'cider-jack-in-clj
       :n  "x"     #'cider-jack-in-cljs
       :n  "q"     #'cider-jack-in-clj&cljs
       :n  "a"     #'cider-switch-to-repl-buffer
       :n  "b"     #'cider-eval-buffer
       :n  "n"     #'cider-repl-set-ns
       :n  "g"     #'cider-find-var
       :n  "d"     #'cider-debug-defun-at-point
       :n  "D"     #'cider-doc
       :n  "c"     #'cider-repl-clear-buffer
       :n  "= ="   #'cider-format-buffer
       :n  "= r"   #'cider-format-region
       :n  "t"     #'cider-test-run-focused-test
       :n  "f"     #'cider-send-function-to-repl
       :n  "e"     #'cider-send-last-sexp-to-repl
       :n  "R"     #'cider-eval-region

       :n  "r"     nil
       :n  "r c n" #'cljr-clean-ns
       :n  "r d k" #'cljr-destructure-keys))
