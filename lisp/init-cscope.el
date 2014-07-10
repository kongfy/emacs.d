(require-package 'xcscope)
(cscope-setup)

(defun cscope-enable ()
  (require 'xcscope)
  (global-set-key [f8] 'cscope-find-global-definition)
  (global-set-key [f9] 'cscope-pop-mark)
)

;; 设置仅在打开c/c++文件时打开
(add-hook 'c-mode-common-hook 'cscope-enable)

(provide 'init-cscope)
