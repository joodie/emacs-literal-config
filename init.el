(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(require 'org)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("08db688c3d8bb7a8f80f6ab29db5067272869017248d0889585b3ff16e85912e" "8b6fcbe834eb12bc1e1e7d3e26568457004a0a9daf95def74a94d855af90f2f1" default)))
 '(safe-local-variable-values (quote ((auto-whitespace-cleanup . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file "~/.emacs.d/emacs.org")

