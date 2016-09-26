;; Some customization for Oceanbase

(setq-default fci-rule-column 100)
(add-hook 'c-mode-common-hook 'fci-mode)

(defvar-local company-fci-mode-on-p nil)

(defun company-turn-off-fci (&rest ignore)
  (when (boundp 'fci-mode)
    (setq company-fci-mode-on-p fci-mode)
    (when fci-mode (fci-mode -1))))

(defun company-maybe-turn-on-fci (&rest ignore)
  (when company-fci-mode-on-p (fci-mode 1)))

(add-hook 'company-completion-started-hook 'company-turn-off-fci)
(add-hook 'company-completion-finished-hook 'company-maybe-turn-on-fci)
(add-hook 'company-completion-cancelled-hook 'company-maybe-turn-on-fci)

;; new oceanbase style for OceanBase 1.0
(require 'new-oceanbase-style)
(c-add-style "new-oceanbase" new-oceanbase-cpp-style)

(provide 'init-ob)
