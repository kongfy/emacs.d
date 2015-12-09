;; general
(global-linum-mode t)

;; personal choice
(setq-default tab-width 4
              indent-tabs-mode nil)

;; for codec
(setq-default buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; override auto-complete key bindings
(setq-default ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

;; custom auto-complete settings
(setq-default ac-auto-start 2) ;; auto pop-up
(setq-default ac-auto-show-menu 0.5)
(setq-default ac-dwim t) ;; To get pop-ups with docs even if a word is uniquely completed

(require 'init-yasnippet)
(require 'init-projectile)

;; c/c++ environment
(defun c-mode-stype ()
  (setq c-default-style "bsd")
  (setq c-basic-offset 4))
(add-hook 'c-mode-common-hook 'c-mode-stype)

(require 'init-clang-complete)
(require 'init-ggtags)

;; python environment
(require 'init-jedi)

;; go environment
(require 'init-go-mode)

;; testing area, may be deleted one day
(require 'init-ecb)

;; end of init-local.el
(provide 'init-local)
