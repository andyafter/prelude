;;; start initiation of orgmode
(prelude-require-packages '(org-pdfview))
(require 'org)

;; auto truncate line
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(require 'ox-latex)
(add-to-list 'org-latex-classes
             '("beamer"
               "\\documentclass\[presentation\]\{beamer\}"
               ("\\section\{%s\}" . "\\section*\{%s\}")
               ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
               ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))

(setq org-startup-indented t)

(provide 'init-org)
;;; end for initiation of org-mode
