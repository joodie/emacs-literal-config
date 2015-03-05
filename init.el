;; start recording loading time
(defconst emacs-start-time (current-time))

(require 'use-package)
;;(require 'bind-key)
;;(setq use-package-verbose t)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(when (not (cl-remove-if-not
	    (lambda (p) (equal 'org (car p)))
	    package-alist))
  (message "No org-mode package found; installing now...")
  (package-install 'org))

(require 'org)
(when (string-match "^[1234567]" (org-version))
  (warn "Org-Mode is out of date. We expect org 8 or higher, but instead we have %s" (org-version)))

(require 'pallet)
(pallet-mode t)

(org-babel-load-file "~/.emacs.d/emacs.org")


;; report time
(let ((elapsed (float-time (time-subtract (current-time)
                                          emacs-start-time))))
  (message "Loading %s...done (%.3fs)" load-file-name elapsed))

(add-hook 'after-init-hook
          `(lambda ()
             (let ((elapsed (float-time (time-subtract (current-time)
                                                       emacs-start-time))))
               (message "Loading %s...done (%.3fs) [after-init]",
                        load-file-name elapsed)))
          t)

