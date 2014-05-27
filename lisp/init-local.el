;; general
(add-to-list 'load-path "~/.emacs.d/plugins")
(global-linum-mode t)

(setq-default c-default-style "bsd"
              c-basic-offset 4
              tab-width 4
              indent-tabs-mode t)

;; for codec
(setq-default buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(require 'init-yasnippet)
(require 'init-tabbar)

;; end of init-local.el
(provide 'init-local)
