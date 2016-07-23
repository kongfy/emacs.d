;; Some customization for Oceanbase

;; This mode highlights all characters that cross the 80 character line limit.
(require 'highlight-80+)
(setq-default highlight-80+-columns 100)
(add-hook 'c-mode-common-hook 'highlight-80+-mode)

;; new oceanbase style for OceanBase 1.0
(require 'new-oceanbase-style)
(c-add-style "new-oceanbase" new-oceanbase-cpp-style)

(provide 'init-ob)
