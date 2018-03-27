;;; init.el --- Heikki's Emacs configuration
;;
;; Copyright (c) 2018 Heikki Lehväslaiho
;;
;; Author: Heikki Lehväslaiho <heikki.lehvaslaiho@gmail.com>
;; URL: https://github.com/hlehva/emacs.d
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; This is my personal Emacs configuration.  Nothing more, nothing less.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

;; (toggle-debug-on-error)

;;;
;;; start recording loading time
;;;
(defconst emacs-start-time (current-time))

;;; set loading of newer files over compiled at the very beginning
(setq load-prefer-newer t)

;;;
;;; package
;;;
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)

;; keep the installed packages in ~/.emacs.d/elpa
(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))
(package-initialize)
;; update the package metadata if the local cache is missing
(unless package-archive-contents
  (package-refresh-contents))

;;;
;;; use-package
;;;
(unless (package-installed-p 'use-package)
  ;;(package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-verbose t)
(setq use-package-always-ensure t)
;; (setq use-package-always-defer t)

;;;
;;; Common extensions to Emacs Lisp
;;;
(require 'cl)

;;;
;;; load the main configuration
;;;
;;(org-babel-load-file "~/.emacs.d/emacs.org")

(defun my-tangle-section-canceled ()
  "Check if the previous section header was PEND."
  (save-excursion
    (if (re-search-backward "^\\*+\\s-+\\(.*?\\)?\\s-*$" nil t)
        (progn
          ;; (message "FOUND '%s'" (match-string 1))
          (string-prefix-p "PEND" (match-string 1)))
      nil)))

(defun my-tangle-config-org (orgfile elfile)
  "Write all source blocks from ORGFILE into ELFILE.

Write only blocks that are:
- not marked as :tangle no
- have a source-code of =emacs-lisp=
- doesn't have the todo-marker PEND (for PENDING)"

  (let* ((body-list ())
         (gc-cons-threshold most-positive-fixnum)
         (org-babel-src-block-regexp
          (concat
           ;; (1) indentation                 (2) lang
           "^\\([ \t]*\\)#\\+begin_src[ \t]+\\([^ \f\t\n\r\v]+\\)[ \t]*"
           ;; (3) switches
           "\\([^\":\n]*\"[^\"\n*]*\"[^\":\n]*\\|[^\":\n]*\\)"
           ;; (4) header arguments
           "\\([^\n]*\\)\n"
           ;; (5) body
           "\\([^\000]*?\n\\)??[ \t]*#\\+end_src")))
    (with-temp-buffer
      (insert-file-contents orgfile)
      (goto-char (point-min))
      (while (re-search-forward org-babel-src-block-regexp nil t)
        (let ((lang (match-string 2))
              (args (match-string 4))
              (body (match-string 5))
              (canc (my-tangle-section-canceled)))
          (when (and (string= lang "emacs-lisp")
                     (not (string-match-p ":tangle\\s-+no" args))
                     (not canc))
            (add-to-list 'body-list body)))))
    (with-temp-file elfile
      (insert (format ";; %s -*- lexical-binding: t ; eval: (read-only-mode 1) -*-\n" elfile))
      (insert (format ";; Don't edit this file, edit %s instead ...\n\n" orgfile))
      ;; (insert (apply 'concat (reverse body-list)))
      (apply 'insert (reverse body-list)))
    (message "Wrote %s ..." elfile)
    (byte-compile-file elfile)))

(let ((orgfile (concat user-emacs-directory "emacs.org"))
      (elfile (concat user-emacs-directory "emacs.el"))
      (gc-cons-threshold most-positive-fixnum))
  (when (file-newer-than-file-p orgfile elfile)
    (my-tangle-config-org orgfile elfile))
  (load-file elfile))

;;;
;;; report times
;;;
(let ((elapsed
       (float-time
        (time-subtract (current-time) emacs-start-time))))
  (message "Loading %s...done (%.3fs)" load-file-name elapsed))

(add-hook 'after-init-hook
          (lambda ()
            (let ((elapsed
                   (float-time (time-subtract (current-time) emacs-start-time))))
              (message "Loading %s...done (%.3fs) [after-init]",
                       load-file-name elapsed)))
          t)

;;; init.el ends here
