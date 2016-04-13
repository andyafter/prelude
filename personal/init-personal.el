;;; Some basic settings that I do not want to mess up with the original code
;;; so far

;;;;;;;;;;; remember to modify everything here ;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; personal should be some functions that you wrote ;;;;

;;; for yasnippet.
(prelude-require-package 'helm-c-yasnippet)
(setq helm-yas-space-match-any-greedy t)
(global-set-key (kbd "TAB") 'helm-yas-complete)
(yas-global-mode 1)
;;;; end of yasnippet configuration
