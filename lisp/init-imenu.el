;;; init-imenu.el --- imenu -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'imenu-list)
  (require-package 'imenu-list)

  ;; (setq-default imenu-list-auto-resize t)
  (setq-default imenu-list-position 'left)
  (setq-default imenu-list-size 0.2)
  (global-set-key (kbd "<f1>") #'imenu-list-minor-mode))

(provide 'init-imenu)
;;; init-imenu.el ends here
