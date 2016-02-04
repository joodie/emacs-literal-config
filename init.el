;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; start recording loading time
(defconst emacs-start-time (current-time))

;; cask and pallet
;;standalone cask
;;(require 'cask "~/.cask/cask.el")
;; OSX: cask from homebrew
;;(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(let ((default-directory "/usr/local/share/emacs/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))
(require 'cask)
(cask-initialize)
(unless (package-installed-p 'pallet)
  (package-refresh-contents)
  (package-install 'pallet))
(require 'pallet)
(pallet-mode t)

(let ((elapsed
       (float-time
        (time-subtract (current-time) emacs-start-time))))
  (message "Loading %s...done (%.3fs)" "cask&pallet" elapsed))

;; use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant
(require 'cl)

;;load the main configuration
(org-babel-load-file "~/.emacs.d/emacs.org")

;; report time
(let ((elapsed
       (float-time
        (time-subtract (current-time) emacs-start-time))))
  (message "Loading %s...done (%.3fs)" load-file-name elapsed))

(add-hook 'after-init-hook
          `(lambda ()
             (let ((elapsed
                    (float-time (time-subtract (current-time) emacs-start-time))))
               (message "Loading %s...done (%.3fs) [after-init]",
                        load-file-name elapsed)))
          t)
