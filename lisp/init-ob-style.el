;;; init-ob-style.el --- Oceanbase C/C++ style -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'new-oceanbase-style)
(add-hook 'c-mode-common-hook 'new-oceanbase-style)

(provide 'init-ob-style)
;;; init-ob-style.el ends here
