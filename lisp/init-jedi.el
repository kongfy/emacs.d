(require-package 'jedi)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(defun python-key-binding ()
  (define-key python-mode-map [f11] 'jedi:goto-definition)
  (define-key python-mode-map [f12] 'jedi:goto-definition-pop-marker))

(add-hook 'python-mode-hook 'python-key-binding)

(provide 'init-jedi)
