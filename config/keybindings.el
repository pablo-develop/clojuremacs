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


(defun show-messages-buffer ()
  (interactive)
  (switch-to-buffer "*Messages*"))

(global-set-key (kbd "<f4>") 'show-messages-buffer)


(map! :leader "SPC" #'execute-extended-command)

(map! :leader "g s" #'magit-status)
(map! :leader "g b" #'magit-blame-addition)

(map! :leader "k"   #'evil-window-up)
(map! :leader "j"   #'evil-window-down)
(map! :leader "h"   #'evil-window-left)
(map! :leader "l"   #'evil-window-right)

(map! :leader "w -" #'split-window-vertically)
(map! :leader "w /" #'split-window-horizontally)

(map! :leader "w k" #'windmove-swap-states-up)
(map! :leader "w j" #'windmove-swap-states-down)
(map! :leader "w h" #'windmove-swap-states-left)
(map! :leader "w l" #'windmove-swap-states-right)

(map! :leader "/"   #'+default/search-project)
(map! :leader "*"   #'+default/search-project-for-symbol-at-point)
(map! :leader ";"   #'evilnc-comment-or-uncomment-lines)

(map! :map clojure-mode-map
      (:localleader
       :n  ";"      #'cider-jack-in-clj
       :n  "x"      #'cider-jack-in-cljs
       :n  "q"      #'cider-jack-in-clj&cljs
       :n  "a"      #'cider-switch-to-repl-buffer
       :n  "b"      #'cider-eval-buffer
       :n  "n"      #'cider-repl-set-ns
       :n  "g"      #'cider-find-var
       :n  "d"      #'cider-debug-defun-at-point
       :n  "D"      #'cider-doc
       :n  "c"      #'cider-repl-clear-buffer
       :n  "= ="    #'cider-format-buffer
       :n  "= r"    #'cider-format-region
       :n  "t"      #'cider-test-run-focused-test
       :n  "f"      #'cider-send-function-to-repl
       :n  "e"      #'cider-send-last-sexp-to-repl
       :n  "R"      #'cider-eval-region

       :n  "r"      nil
       :n  "r ?"    #'cljr-describe-refactoring
       :n  "r a d"  #'cljr-add-declaration
       :n  "r a i"  #'cljr-add-import-to-ns
       :n  "r a m"  #'cljr-add-missing-libspec
       :n  "r a p"  #'cljr-add-project-dependency
       :n  "r a r"  #'cljr-add-require-to-ns
       :n  "r a s"  #'cljr-add-stubs
       :n  "r a u"  #'cljr-add-use-to-ns
       :n  "r c c"  #'cljr-cycle-coll
       :n  "r c i"  #'cljr-cycle-if
       :n  "r c n"  #'cljr-clean-ns
       :n  "r c p"  #'cljr-cycle-privacy
       :n  "r d k"  #'cljr-destructure-keys
       :n  "r e f"  #'cljr-extract-function
       :n  "r e c"  #'cljr-extract-constant
       :n  "r e l"  #'cljr-expand-let
       :n  "r f u"  #'cljr-find-usages
       :n  "r f e"  #'cljr-create-fn-from-example
       :n  "r h d"  #'cljr-hotload-dependency
       :n  "r i l"  #'cljr-introduce-let
       :n  "r i s"  #'cljr-inline-symbol
       :n  "r m f"  #'cljr-move-form
       :n  "r m l"  #'cljr-move-to-let
       :n  "r p c"  #'cljr-project-clean
       :n  "r p f"  #'cljr-promote-function
       :n  "r r d"  #'cljr-remove-debug-fns
       :n  "r r f"  #'cljr-rename-file-or-dir
       :n  "r r l"  #'cljr-remove-let
       :n  "r r r"  #'cljr-remove-unused-requires
       :n  "r r s"  #'cljr-rename-symbol
       :n  "r r u"  #'cljr-replace-use
       :n  "r s n"  #'cljr-sort-ns
       :n  "r s p"  #'cljr-sort-project-dependencies
       :n  "r s r"  #'cljr-stop-referring
       :n  "r s c"  #'cljr-show-changelog
       :n  "r t f"  #'cljr-thread-first-all
       :n  "r t h"  #'cljr-thread
       :n  "r t l"  #'cljr-thread-last-all
       :n  "r u a"  #'cljr-unwind-all
       :n  "r u p"  #'cljr-update-project-dependencies
       :n  "r u w"  #'cljr-unwind))
