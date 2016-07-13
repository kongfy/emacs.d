(require-package 'jedi)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(defun python-key-binding ()
  (define-key python-mode-map [f11] 'jedi:goto-definition)
  (define-key python-mode-map [f12] 'jedi:goto-definition-pop-marker))

(add-hook 'python-mode-hook 'python-key-binding)

;; virtualenv tip:
;; You MUST put a .dir-locals.el in the project's root directory with something like:
;; ((python-mode . ((python-shell-virtualenv-path . "/path/to/my/venv/"))))

(provide 'init-jedi)
