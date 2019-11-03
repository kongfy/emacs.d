;;; init-irony.el --- C/C++ editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'irony)

  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)

  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

  (defvar company-backends-irony nil)

  (when (maybe-require-package 'company-irony)
    (push 'company-irony company-backends-irony))

  (when (maybe-require-package 'company-irony-c-headers)
    (push 'company-irony-c-headers company-backends-irony))

  (after-load 'yasnippet
    (setq company-backends-irony (append company-backends-irony '(company-yasnippet))))

  (after-load 'company
    (add-hook 'irony-mode-hook
              (lambda () (sanityinc/local-push-company-backend company-backends-irony))))

  (when (maybe-require-package 'flycheck-irony)
    (after-load 'irony
      (after-load 'flycheck
        (add-hook 'irony-mode-hook 'flycheck-irony-setup)))))

(provide 'init-irony)
;;; init-irony.el ends here
