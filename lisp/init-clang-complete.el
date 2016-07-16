(require-package 'company-c-headers)

(after-load 'company
  (add-hook 'c-mode-common-hook
            (lambda () (sanityinc/local-push-company-backend '(company-c-headers company-clang company-yasnippet company-capf company-dabbrev-code))))
  )

(provide 'init-clang-complete)
