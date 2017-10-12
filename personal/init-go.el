;;; configuration of helm

(prelude-require-package 'go-mode)

(require 'go-mode)

(setenv "GOPATH" "/Users/andy.pan/gopath")

(defun my-go-mode-hook ()
    ; Call Gofmt before saving 
  (add-hook 'before-save-hook 'gofmt-before-save))

(add-hook 'go-mode-hook 'my-go-mode-hook)
