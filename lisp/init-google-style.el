;;; init-google-style.el --- Google C/C++ style -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'google-c-style)
  (add-hook 'c-mode-common-hook 'google-set-c-style)
  (add-hook 'c-mode-common-hook 'google-make-newline-indent))

(provide 'init-google-style)
;;; init-google-style.el ends here
