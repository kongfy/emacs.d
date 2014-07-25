(require-package 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'eldoc-mode)

(require-package 'ac-anaconda)
(add-hook 'python-mode-hook 'ac-anaconda-setup)

(defun python-scope ()
  (global-set-key [f11] 'anaconda-mode-goto)
  (global-set-key [f12] 'anaconda-nav-pop-marker)
)

;; 设置仅在打开python文件时打开
(add-hook 'python-mode-hook 'python-scope)

(provide 'init-python-complete)
