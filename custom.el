(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(add-log-full-name "Heikki Lehvaslaiho")
 '(add-log-mailing-address "heikki.lehvaslaiho@gmail.com")
 '(before-save-hook (quote (time-stamp)))
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-time-24hr-format t)
 '(display-time-mode nil)
 '(require-final-newline t)
 '(save-place t nil (saveplace))
 '(scroll-bar-mode (quote right))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
 '(text-mode-hook (quote (turn-on-auto-fill
                          (lambda nil (flyspell-mode 1)) text-mode-hook-identify)))
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(user-full-name "Heikki Lehvaslaiho")
 '(user-mail-address "heikki.lehvaslaiho@gmail.com"))
