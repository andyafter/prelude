;;; this is a major mode for jumping around the code
(prelude-require-package 'smex)
(prelude-require-package 'ace-jump-mode)
(require 'ace-jump-mode)

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;;; end of initiation for jumping
