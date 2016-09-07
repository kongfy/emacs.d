;; general
(global-linum-mode t)
(which-function-mode t)

;; personal choice
(setq-default tab-width 4
              indent-tabs-mode nil)

;; for codec
(setq-default buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; (setq-default company-async-timeout 30) ;; don't timeout. parsing ob is so slow.

(require 'init-yasnippet)
(require 'init-projectile)

(require 'init-clang-complete)
(require 'init-ggtags)

(require 'init-ob)

;; python environment
(require 'init-jedi)

;; go environment
;; (require 'init-go-mode)

;; tex environment
;; (require 'init-tex)

;; testing area, may be deleted one day
(require 'init-ecb)

;; end of init-local.el
(provide 'init-local)
