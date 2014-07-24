(require-package 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'eldoc-mode)

(require-package 'ac-anaconda)
(add-hook 'python-mode-hook 'ac-anaconda-setup)

(provide 'init-python-complete)
