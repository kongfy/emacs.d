(require-package 'yasnippet)

;; enable yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; 为auto-complete添加yasnippet源
(defun ac-yasnippet-setup ()
  (setq ac-sources (append '(ac-source-yasnippet) ac-sources)))
(add-hook 'auto-complete-mode-hook 'ac-yasnippet-setup)

(provide 'init-yasnippet)
