;;; testing for development of helm version of smex
;;; Code:
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-x") 'smex-major-mode-commands)


(provide 'dev-helm-smex)
;;; dev-helm-smex.el ends here
