(require-package 'ecb)

(require 'ecb)
(setq ecb-auto-activate t)
(setq ecb-tip-of-the-day nil)
;; (setq ecb-examples-bufferinfo-buffer-name nil)

(defun my-ecb-active-or-deactive ()
  (interactive)
  (if ecb-minor-mode
      (ecb-deactivate)
    (ecb-activate)))
(global-set-key [f1] 'my-ecb-active-or-deactive)

(global-set-key (kbd "C-c 1") 'ecb-goto-window-directories)
(global-set-key (kbd "C-c 2") 'ecb-goto-window-sources)
(global-set-key (kbd "C-c 3") 'ecb-goto-window-methods)
(global-set-key (kbd "C-c 4") 'ecb-goto-window-history)
(global-set-key (kbd "C-c e") 'ecb-goto-window-edit-last)

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
