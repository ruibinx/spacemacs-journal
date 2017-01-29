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
  (progn
    (spacemacs/declare-prefix "aj" "journal")
    (spacemacs/set-leader-keys
      "ajc" 'org-journal-new-entry)
    )
  )


(defun journal/init-org-journal ()
  (use-package org-journal
    :init
    (progn
      (journal//set-global-keys)
      )
    )
  )
