(require-package 'jedi)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(defun python-key-binding ()
  (global-set-key [f11] 'jedi:goto-definition)
  (global-set-key [f12] 'jedi:goto-definition-pop-marker)
  )

;; 设置仅在打开python文件时打开
(add-hook 'python-mode-hook 'python-key-binding)

(provide 'init-python-complete)
