(prelude-require-packages '(restclient company-restclient ob-restclient))
(require 'restclient)
(require 'company-restclient)
(require 'ob-restclient)
(add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))

(provide 'init-restful)
;; end for initiation of restful
