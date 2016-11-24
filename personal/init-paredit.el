;;; paredit everywhere
;;; Code:
(prelude-require-package 'paredit-everywhere)
(prelude-require-package 'smartparens)

(require 'paredit-everywhere)
(require 'smartparens)
(add-hook 'prog-mode-hook 'paredit-everywhere-mode)

(global-set-key (kbd "M-?") 'paredit-convolute-sexp)
(global-set-key (kbd "M-J") 'paredit-join-sexps)

(provide 'init-paredit)
;;; end for initiation of paredit
