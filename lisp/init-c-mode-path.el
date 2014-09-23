(defun c-mode-path ()
  (setq flycheck-clang-include-path
        (list (expand-file-name "~/Documents/Nanos/include/")))
  )

(add-hook 'c-mode-common-hook 'c-mode-path)

(provide 'init-c-mode-path)
