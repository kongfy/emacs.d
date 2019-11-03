;;; init-yasnippet.el --- Yasnippet -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'yasnippet)

  (require-package 'yasnippet-snippets)
  ;; enable yasnippet
  (require 'yasnippet)
  (yas-global-mode 1)

  (after-load 'company
    (push 'company-yasnippet company-backends)))

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
