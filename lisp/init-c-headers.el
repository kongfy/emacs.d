;;; init-c-headers.el --- C headers company backend -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'company-c-headers)
  (require 'company-c-headers)
  (after-load 'company
    (add-hook 'c-mode-common-hook
              (lambda () (sanityinc/local-push-company-backend 'company-c-headers)))))

(provide 'init-c-headers)
;;; init-c-headers.el ends here
