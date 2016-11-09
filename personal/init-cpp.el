;;; initiation for C++ mode.
;;; Code:

;; Setting up cedet
(prelude-require-packages '(cc-mode semantic))
(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(global-semantic-stickyfunc-mode 1)

(semantic-mode 1)

(defun alexott/cedet-hook ()
  (local-set-key "\C-c\C-j" 'semantic-ia-fast-jump)
  (local-set-key "\C-c\C-s" 'semantic-ia-show-summary))

(add-hook 'c-mode-common-hook 'alexott/cedet-hook)
(add-hook 'c-mode-hook 'alexott/cedet-hook)
(add-hook 'c++-mode-hook 'alexott/cedet-hook)

;; end for setting up cedet

;; for helm-gtags
(prelude-require-packages '(helm-gtags ggtags))
;; seems that prelude only take cares of the problem of installation
(require 'helm-gtags)
(require 'ggtags)

;; setting up for gtags
(add-hook 'c-mode-common-hook
          (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
            (ggtags-mode 1)))
(define-key ggtags-mode-map (kbd "C-c c s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c c h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c c r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c c f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c c c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c c u") 'ggtags-update-tags)
(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)
;; setting up for helm-gtags
(setq
 helm-gtags-ignore-case t
 helm-gtags-auto-update t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-prefix-key "\C-cc"
 helm-gtags-suggested-key-mapping t
 )

;; Enable helm-gtags-mode in Dired so you can jump to any tag
;; when navigate project tree with Dired
(add-hook 'dired-mode-hook 'helm-gtags-mode)

;; Enable helm-gtags-mode in Eshell for the same reason as above
(add-hook 'eshell-mode-hook 'helm-gtags-mode)

;; Enable helm-gtags-mode in languages that GNU Global supports
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'java-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)

(define-key helm-gtags-mode-map (kbd "C-c c a") 'helm-gtags-tags-in-this-function)
(define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
(define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
(define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)
;;;;;;;;;; end of helm-gtags

;;; Beginning of initiating code navigation

;; for executing from shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
;; in order to use gtags

;; this here defines disaster key for disassembly
(prelude-require-package 'disaster)
(require 'disaster)
(define-key c-mode-base-map (kbd "C-c c d") 'disaster)
;; end for disaster

(provide 'init-cpp)
(message "Finished initiating init-cpp!")
;;; initiation of c and c++ ends here.
