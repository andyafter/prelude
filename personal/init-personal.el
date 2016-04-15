;;; Some basic settings that I do not want to mess up with the original code
;;; so far

;;;;;;;;;;; remember to modify everything here ;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; personal should be some functions that you wrote ;;;;

;;; for yasnippet.
(prelude-require-package 'helm-c-yasnippet)
(require 'helm-c-yasnippet)
(setq helm-yas-space-match-any-greedy t)

(yas-reload-all)
(add-hook 'c-mode-hook #'yas-minor-mode)
(global-set-key (kbd "C-c m") 'helm-yas-complete)

;;; starting to initiate some of my favorite keys
(defun copy-line ()
  "Copy the current line"
  (interactive)
  (move-beginning-of-line nil)
  (set-mark (point))
  (move-end-of-line nil)
  (copy-region-as-kill (mark) (point))
  (deactivate-mark)
  )

(global-set-key (kbd "C-c c l") 'copy-line)
(provide 'init-personal)
(message "Finishing personal initiation here.")
;;;; end of yasnippet configuration
