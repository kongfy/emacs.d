(require-package 'tabbar)

(require 'tabbar)
(tabbar-mode 1)

;; key binding for switch tabbar
(global-set-key [(meta \9)] 'tabbar-backward-tab)
(global-set-key [(meta \0)] 'tabbar-forward-tab)
(global-set-key [(meta \7)] 'tabbar-backward-group)
(global-set-key [(meta \8)] 'tabbar-forward-group)

(provide 'init-tabbar)
