;; general
(global-linum-mode t)

;; personal choice
(setq-default tab-width 4
              indent-tabs-mode nil)

(setq-default fci-rule-column 100)
;; (setq-default fci-rule-color "darkblue")

;; for codec
(setq-default buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)


(require 'init-yasnippet)
(require 'init-projectile)

;; c/c++ environment
(defun c-mode-style ()
  (setq c-default-style "bsd")
  (setq c-basic-offset 4))
(add-hook 'c-mode-common-hook 'c-mode-style)

;; (require 'init-clang-complete)
(require 'init-ggtags)

;; python environment
;; (require 'init-jedi)

;; go environment
;; (require 'init-go-mode)

;; tex environment
;; (require 'init-tex)

;; testing area, may be deleted one day
(require 'init-ecb)

;; end of init-local.el
(provide 'init-local)
