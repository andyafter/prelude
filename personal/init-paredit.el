;;; paredit everywhere
;;; Code:
(prelude-require-package 'paredit-everywhere)
(require 'paredit-everywhere)
(add-hook 'prog-mode-hook 'paredit-everywhere-mode)

(provide 'init-paredit)
;;; end for initiation of paredit
