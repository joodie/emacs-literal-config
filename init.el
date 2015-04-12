;; start recording loading time
(defconst emacs-start-time (current-time))

;; cask and pallet
;;standalone cask
;;(require 'cask "~/.cask/cask.el")
;; OSX: cask from homebrew
(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(let ((elapsed
       (float-time
        (time-subtract (current-time) emacs-start-time))))
  (message "Loading %s...done (%.3fs)" "cask&pallet" elapsed))

;; use-package
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

