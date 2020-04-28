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
