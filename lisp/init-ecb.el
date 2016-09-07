(require-package 'ecb)

(require 'ecb)
(setq ecb-tip-of-the-day nil)
(setq ecb-examples-bufferinfo-buffer-name nil)

(defun my-ecb-active-or-deactive ()
  (interactive)
  (if ecb-minor-mode
      (progn
        (ecb-deactivate)
        (guide-key-mode 1))
    (guide-key-mode -1)
    (ecb-activate)))
(global-set-key [f1] 'my-ecb-active-or-deactive)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-windows-width 0.2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init-ecb)
