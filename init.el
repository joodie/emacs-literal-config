;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Set loading of newer files over compiled at the very beginning
(setq load-prefer-newer t)

(require 'package)
(setq package-enable-at-startup nil)
(package-initialize t)

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
(require 'cl)                      ;; Common Lisp extensions to Emacs Lisp
(setq use-package-always-ensure t) ;; no need for :ensure key


;;load the main configuration
;;(org-babel-load-file "~/.emacs.d/emacs.org")


(defun my-tangle-section-canceled ()
  "Checks if the previous section header was PEND"
  (save-excursion
    (if (re-search-backward "^\\*+\\s-+\\(.*?\\)?\\s-*$" nil t)
        (progn
          ;; (message "FOUND '%s'" (match-string 1))
          (string-prefix-p "PEND" (match-string 1)))
      nil)))

(defun my-tangle-config-org (orgfile elfile)
  "This function will write all source blocks from ORGFILE into
ELFILE that are ...

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


;; report time
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

;;(add-hook 'after-init-hook
;;          (lambda ()
;;            (setq ns-auto-hide-menu-bar t)
;;            (custom-set-variables
;;             '(initial-frame-alist (quote ((fullscreen . maximized)))))))

;;(add-hook 'after-init-hook
;;          (lambda ()
;;            (setq ns-auto-hide-menu-bar t)
;;            (custom-set-variables
;;             '(initial-frame-alist (quote ((fullscreen . maximized)))))))

;;(setq ns-auto-hide-menu-bar t)
;;(setq ns-auto-hide-menu-bar t)
;;(custom-set-variables
;; '(initial-frame-alist (quote ((fullscreen . maximized)))))

;;add-hook 'window-setup-hook
;;         (lambda()
;;           (setq ns-auto-hide-menu-bar t)
;;           (set-frame-position nil 0 -24)
;;           (set-frame-size
;;            nil (display-pixel-width)
;;            (display-pixel-height) t)))
