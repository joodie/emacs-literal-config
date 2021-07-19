;;; early-init.el -*- lexical-binding: t; -*-

;; Extracted from https://github.com/hlissner/doom-emacs/blob/develop/early-init.el

;; Emacs HEAD (27+) introduces early-init.el, which is run before init.el,
;; before package and UI initialization happens.


(defvar old-file-name-handler file-name-handler-alist)
(setq file-name-handler-alist nil
      gc-cons-threshold most-positive-fixnum)

;; In Emacs 27+, package initialization occurs before `user-init-file' is
;; loaded, but after `early-init-file'.
(setq package-enable-at-startup nil)

;; Prevent the glimpse of un-styled Emacs by disabling these UI elements early.
(setq tool-bar-mode nil
  menu-bar-mode nil)
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))

;; Resizing the Emacs frame can be a terribly expensive part of changing the
;; font. By inhibiting this, we easily halve startup times with fonts that are
;; larger than the system default.
(setq frame-inhibit-implied-resize t)

;; Ignore X resources; its settings would be redundant with the other settings
;; in this file and can conflict with later config (particularly where the
;; cursor color is concerned).
(advice-add #'x-apply-session-resources :override #'ignore)
