(require-package 'auctex)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil) ; Query for master file.
;; (setq TeX-PDF-mode t)

(require-package 'ac-math)
(require 'ac-math) ; This is not needed when you install from MELPA

(add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of `latex-mode`

(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
        (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
                ac-sources)))

(add-hook 'TeX-mode-hook (lambda()
                           (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
                           (setq TeX-command-default "XeLaTeX")
                           (setq TeX-save-query  nil )
                           (setq TeX-show-compilation t)
                           ))

(add-hook 'TeX-mode-hook 'ac-latex-mode-setup)

(provide 'init-tex)
