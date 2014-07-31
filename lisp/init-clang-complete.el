(require-package 'auto-complete-clang)

(require 'auto-complete-clang)

(defun ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang) ac-sources)))
(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)

(provide 'init-clang-complete)
