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

;;; for running projects
(defun open-planner-project()
  "Open Robotics Project"
  (interactive)
  (setq path "/User/andy.pan/gopath/src/github.com/myteksi/go/dispatcher/grab-x/planner"))

(global-set-key (kbd "C-c c y") 'copy-line)
(global-set-key (kbd "C-c c p") 'open-planner-project)
(require 'yasnippet)
(global-set-key (kbd "C-c q") 'yas-expand)
(provide 'init-personal)
(message "Finishing personal initiation here.")
;;;; end of yasnippet configuration


