(require-package 'auctex)

(setq-default TeX-auto-save t)
(setq-default TeX-parse-self t)
(setq-default TeX-master nil) ; Query for master file.
;; (setq TeX-PDF-mode t)

;; TODO: completion with company mode.

(add-hook 'TeX-mode-hook (lambda()
                           (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
                           (setq TeX-command-default "XeLaTeX")
                           (setq TeX-save-query  nil )
                           (setq TeX-show-compilation t)
                           ))

(provide 'init-tex)
