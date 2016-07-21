(require-package 'ggtags)

(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))


(defun ccpp-key-binding ()
  (define-key c-mode-base-map [f9] 'ggtags-view-tag-history)
  (define-key c-mode-base-map [f11] 'ggtags-prev-mark)
  (define-key c-mode-base-map [f12] 'ggtags-next-mark))

(add-hook 'c-mode-common-hook 'ccpp-key-binding)

(provide 'init-ggtags)
