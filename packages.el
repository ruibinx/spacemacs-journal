;;; packages.el --- journal layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author:  <robin@robin-laptop>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst journal-packages '(org-journal)
  )

(defun journal//set-global-keys ()
  (spacemacs/declare-prefix "aj" "journal")
  (spacemacs/set-leader-keys
    "ajc" 'org-journal-new-entry)
  (spacemacs/set-leader-keys
    "ajv" 'view-journal)
  (spacemacs/set-leader-keys
    "ajs" 'org-journal-search)
  (spacemacs/set-leader-keys
    "ajS" 'search-all-journals)
  )


(defun journal/init-org-journal ()
  (use-package org-journal
    :defer t
    :init
    (progn
      (journal//set-global-keys)
      )

    )
  )

