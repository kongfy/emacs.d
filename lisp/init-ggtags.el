(require-package 'ggtags)

(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))


(defun ccpp-key-binding ()
  (define-key c-mode-base-map [f10] 'ggtags-find-reference)
  (define-key c-mode-base-map [f11] 'ggtags-find-definition)
  (define-key c-mode-base-map [f12] 'ggtags-prev-mark))

(add-hook 'c-mode-common-hook 'ccpp-key-binding)

(provide 'init-ggtags)
