(defun view-journal ()
  (interactive)
  (org-journal-new-entry t nil)
  )

(defun search-all-journals ()
  (interactive)
  (setq current-prefix-arg '(4))
  (call-interactively 'org-journal-search)
  )
