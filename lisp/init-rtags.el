(require 'rtags)
(require 'company-rtags)

(add-hook 'c-mode-common-hook 'rtags-start-process-unless-running)
(add-hook 'c++-mode-common-hook 'rtags-start-process-unless-running)

(rtags-enable-standard-keybindings)

;; (setq rtags-autostart-diagnostics t)
;; (rtags-diagnostics)
;; (setq rtags-completions-enabled t)

;; (after-load 'company
;;   (add-hook 'c-mode-common-hook
;;             (lambda () (sanityinc/local-push-company-backend '(company-c-headers company-rtags company-capf company-dabbrev-code))))
;;   )

(provide 'init-rtags)
