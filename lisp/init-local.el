;;; init-local.el --- kongfy customization -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; general
(which-function-mode t)

;; personal choice
(setq-default tab-width 4
              indent-tabs-mode nil)

;; for codec
(setq-default buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(require 'init-yasnippet)

;; for C/C++
(require 'init-c-headers)
(require 'init-irony)
(require 'init-ggtags)

;; (require 'init-ob-style)
(require 'init-google-style)

;; for golang
;; (require 'init-go-mode)

;; testing area, may be deleted one day
(require 'init-imenu)

(provide 'init-local)
;;; init-local.el ends here
