;; general
(global-linum-mode t)

(setq-default c-default-style "bsd"
              c-basic-offset 4
              tab-width 4
              indent-tabs-mode nil)

;; for codec
(setq-default buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; override auto-complete key bindings
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

;; custom auto-complete settings
(setq-default ac-auto-start 2) ;; auto pop-up
(setq-default ac-auto-show-menu 0.5)
(setq-default ac-dwim t) ;; To get pop-ups with docs even if a word is uniquely completed

(require 'init-yasnippet)

;; c/c++ environment
(require 'init-clang-complete)
(require 'init-ggtags)
(require 'init-custom-path)

;; python environment
(require 'init-jedi)

;; go environment
(require 'init-go-mode)

;; testing area, may be deleted one day
(require 'init-ecb)

;; end of init-local.el
(provide 'init-local)
