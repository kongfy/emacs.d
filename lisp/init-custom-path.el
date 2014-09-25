(defun c-mode-path ()
  (setq flycheck-clang-include-path
        (list (expand-file-name "~/Documents/Nanos/include/")
              (expand-file-name "~/Documents/Nanos/ring3/include/")))

  (setq ac-clang-flags
        (mapcar (lambda (item)(concat "-I" item))
                (split-string
                 "
/home/kongfy/Documents/Nanos/include/
/home/kongfy/Documents/Nanos/ring3/include/
"
                 )))
  )

(add-hook 'c-mode-hook 'c-mode-path)

(provide 'init-custom-path)
