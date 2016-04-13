;;; Code:
;;; checkout what is the best practice later.
(prelude-require-packages '(sublime-themes base16-theme))
(load-theme 'fogus t)

(set-frame-parameter (selected-frame) 'alpha '(90 90))
;(add-to-list 'default-frame-alist '(alpha 85 85))
(provide 'init-theme)
