;;; init-ggtags.el --- ggtags -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'ggtags)
  (add-hook 'c-mode-common-hook
            (lambda ()
              (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
                (ggtags-mode 1))))

  (defun ggtags-key-binding ()
    (define-key c-mode-base-map (kbd "<f9>") 'ggtags-view-tag-history)
    (define-key c-mode-base-map (kbd "<f11>") 'ggtags-prev-mark)
    (define-key c-mode-base-map (kbd "<f12>") 'ggtags-next-mark))

  (add-hook 'c-mode-common-hook 'ggtags-key-binding))

(provide 'init-ggtags)
;;; init-ggtags.el ends here
