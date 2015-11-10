(when (memq window-system '(mac ns))
  (exec-path-from-shell-copy-env "GOPATH"))

(require-package 'go-mode)
(require-package 'go-eldoc)

(require-package 'go-autocomplete)
(require 'go-autocomplete)

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

(provide 'init-go-complete)
