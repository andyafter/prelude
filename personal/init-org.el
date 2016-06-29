;;; start initiation of orgmode
(prelude-require-packages '(org-pdfview))

;; auto truncate line
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))


(provide 'init-org)
;;; end for initiation of org-mode
