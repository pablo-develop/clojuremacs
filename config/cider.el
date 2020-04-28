(setq cider-repl-pop-to-buffer-on-connect nil)
(setq cider-preferred-build-tool 'lein)

(defun cider-eval-in-repl-no-focus (form)
  "Insert FORM in the REPL buffer and eval it."
  (while (string-match "\\`[ \t\n\r]+\\|[ \t\n\r]+\\'" form)
    (setq form (replace-match "" t t form)))
  (with-current-buffer (cider-current-repl-buffer)
    (let ((pt-max (point-max)))
      (goto-char pt-max)
      (insert form)
      (indent-region pt-max (point))
      (cider-repl-return))))

(defun cider-send-last-sexp-to-repl ()
  "Send last sexp to REPL and evaluate it without changing
the focus."
  (interactive)
  (cider-eval-in-repl-no-focus (cider-last-sexp)))

(defun cider-send-region-to-repl (start end)
  "Send region to REPL and evaluate it without changing
the focus."
  (interactive "r")
  (cider-eval-in-repl-no-focus
   (buffer-substring-no-properties start end)))

(defun cider-send-function-to-repl ()
  "Send current function to REPL and evaluate it without changing
the focus."
  (interactive)
  (cider-eval-in-repl-no-focus (cider-defun-at-point)))

(defun cider-send-ns-form-to-repl ()
  "Send buffer's ns form to REPL and evaluate it without changing
the focus."
  (interactive)
  (cider-eval-in-repl-no-focus (cider-ns-form)))


(defun cider-test-run-focused-test ()
  "Run test around point."
  (interactive)
  (cider-load-buffer)
  (cider-test-run-test))

(defun cider-jack-in-with-profile ()
  (interactive)
  (letrec ((profile (read-string "Enter profile name: "))
           (lein-params (concat "with-profile +" profile " repl :headless")))
    (message "lein-params set to: %s" lein-params)
    (set-variable 'cider-lein-parameters lein-params)
    (cider-jack-in '())))
