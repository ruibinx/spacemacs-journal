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

(defconst journal-packages
  '(
    org-journal
    calendar
    )
  )

(defun journal//set-global-keys ()
  (spacemacs/declare-prefix "aj" "journal")
  (spacemacs/set-leader-keys
    "ajj" 'org-journal-new-entry)
  (spacemacs/set-leader-keys
    "ajv" 'view-journal)
  (spacemacs/set-leader-keys
    "ajs" 'org-journal-search)
  (spacemacs/set-leader-keys
    "ajS" 'search-all-journals)
  )

(defun journal//set-major-mode-keys ()
  (spacemacs/set-leader-keys-for-major-mode 'org-journal-mode
    "n" 'org-journal-open-next-entry)
  (spacemacs/set-leader-keys-for-major-mode 'org-journal-mode
    "p"  'org-journal-open-previous-entry)
  (spacemacs/set-leader-keys-for-major-mode 'org-journal-mode
    "j"  'org-journal-new-entry)
  (spacemacs/set-leader-keys-for-major-mode 'org-journal-mode
    "s"  'org-journal-search)
  )

(defun journal//set-calendar-keys ()
  (define-key calendar-mode-map "Jj" 'org-journal-new-date-entry)
  (define-key calendar-mode-map "Jv" 'org-journal-read-entry)
  (define-key calendar-mode-map "JV" 'org-journal-display-entry)
  (define-key calendar-mode-map "Jn" 'org-journal-next-entry)
  (define-key calendar-mode-map "Jp" 'org-journal-previous-entry)
  (define-key calendar-mode-map "Jf" 'org-journal-search-forever)
  (define-key calendar-mode-map "Jw" 'org-journal-search-calendar-week)
  (define-key calendar-mode-map "Jm" 'org-journal-search-calendar-month)
  (define-key calendar-mode-map "Jy" 'org-journal-search-calendar-month)
  )

(defun journal/init-org-journal ()
  (use-package org-journal
    :defer t
    :init
    (progn
      (journal//set-global-keys)
      (journal//set-major-mode-keys)
      )
    )
  )

(defun journal/init-calendar ()
  (use-package calendar
    :config
    (progn
      (journal//set-calendar-keys)
      (add-hook 'calendar-today-visible-hook 'org-journal-mark-entries)
      (add-hook 'calendar-today-invisible-hook 'org-journal-mark-entries)
      )
    )
  )

