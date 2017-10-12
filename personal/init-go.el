;;; configuration of helm

(prelude-require-package 'go-mode)

(require 'go-mode)

(setenv "GOPATH" "/Users/andy.pan/gopath")

(defun my-go-mode-hook ()
    ; Call Gofmt before saving 
    (add-hook 'before-save-hook 'gofmt-before-save))

(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq eshell-path-env path-from-shell) ; for eshell users
    (setq exec-path (split-string path-from-shell path-separator))))

(add-hook 'go-mode-hook 'my-go-mode-hook)
