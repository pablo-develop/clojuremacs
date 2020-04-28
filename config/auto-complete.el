(after! cider
  (add-hook 'company-completion-started-hook 'ans/set-company-maps)
  (add-hook 'company-completion-finished-hook 'ans/unset-company-maps)
  (add-hook 'company-completion-cancelled-hook 'ans/unset-company-maps)

  (defun ans/unset-company-maps (&rest unused)
    "Set default mappings (outside of company).
    Arguments (UNUSED) are ignored."
    (general-def
      :states 'insert
      :keymaps 'override
      "<up>" nil
      "<down>" nil
      "C-j" nil
      "C-k" nil
      "C-n" nil
      "RET" nil
      [return] nil))

  (defun ans/set-company-maps (&rest unused)
    "Set maps for when you're inside company completion.
    Arguments (UNUSED) are ignored."
    (general-def
      :states 'insert
      :keymaps 'override
      "<down>" 'company-select-next
      "<up>" 'company-select-previous
      "C-j" 'company-select-next
      "C-k" 'company-select-previous
      "RET" 'company-complete
      "C-n" 'company-complete
      [return] 'company-complete)))
