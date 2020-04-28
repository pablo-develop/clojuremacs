(dolist (mode '(clojure-mode clojurescript-mode clojurec-mode clojurex-mode))
 (font-lock-add-keywords mode
    `(("(\\(fn\\)[[[:space:]]"
       (0 (progn (compose-region (match-beginning 1)
                                 (match-end 1) "λ")
                 nil)))
      ("(\\(partial\\)[[[:space:]]"
       (0 (progn (compose-region (match-beginning 1)
                                 (match-end 1) "Ƥ")
                 nil)))
      ("(\\(comp\\)[[[:space:]]"
       (0 (progn (compose-region (match-beginning 1)
                                 (match-end 1) "∘")
                 nil)))
      ("\\(#\\)("
       (0 (progn (compose-region (match-beginning 1)
                                 (match-end 1) "ƒ")
                 nil)))
      ("\\(#\\){"
       (0 (progn (compose-region (match-beginning 1)
                                 (match-end 1) "∈")
                 nil))))))
