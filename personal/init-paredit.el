;;; paredit everywhere
;;; Code:
(prelude-require-package 'paredit-everywhere)
(prelude-require-package 'smartparens)

(require 'paredit-everywhere)
(require 'smartparens)
(add-hook 'prog-mode-hook 'paredit-everywhere-mode)


(provide 'init-paredit)
;;; end for initiation of paredit
