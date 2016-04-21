;;; initiation for window configurations
;;; window numbering and purpose later
;;; Code:
;;;(prelude-require-packages '(window-numbering))
(prelude-require-package 'window-purpose)
(require 'window-purpose)
(add-to-list 'purpose-user-mode-purposes '(python-mode . py))
(add-to-list 'purpose-user-mode-purposes '(inferior-python-mode . py-repl))
(purpose-compile-user-configuration)

(global-set-key (kbd "s-1") 'other-window)
(provide 'init-window)
;;; end for initiation of window configs
