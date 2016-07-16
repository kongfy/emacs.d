(when (memq window-system '(mac ns))
  (exec-path-from-shell-copy-env "GOPATH"))

(require-package 'go-mode)
(require-package 'go-eldoc)
(require-package 'company-go)
(require-package 'flymake-go)

(add-to-list 'load-path (concat
                         (getenv "GOPATH")
                         "/src/github.com/dougm/goflymake"
                         ))
(require 'go-flycheck)

(defun go-mode-setup ()
  (setq compile-command "go build -v && go test -v && go vet")
  (define-key (current-local-map) "\C-c\C-c" 'compile)
  (go-eldoc-setup)
  (add-hook 'before-save-hook 'gofmt-before-save)
  (require 'flymake-go)
  (local-set-key [f11] 'godef-jump))
(add-hook 'go-mode-hook 'go-mode-setup)

(after-load 'company
  (add-hook 'go-mode-hook
            (lambda () (sanityinc/local-push-company-backend '(company-go company-yasnippet company-capf company-dabbrev-code))))
  )

(provide 'init-go-mode)
