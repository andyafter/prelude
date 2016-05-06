;;; testing for development of helm version of smex
;;; Code:
(autoload 'smex "smex" nil t);; seems that this is useful

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; ;;; dev-helm-smex.el ends here 
