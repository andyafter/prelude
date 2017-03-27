;;; Code:
;;; checkout what is the best practice later.
(prelude-require-packages '(sublime-themes base16-theme))
(load-theme 'nord t)

;; this is to make the screen translucent
(set-frame-parameter (selected-frame) 'alpha '(95 90))


;(add-to-list 'default-frame-alist '(alpha 85 85))
(provide 'init-theme)
