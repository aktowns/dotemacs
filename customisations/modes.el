; i <3 cmd+t
(require 'textmate)
(textmate-mode t)

; pretty git is pretty
(require 'magit)

; :(
(nyan-mode)

; tab completed snipepts
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")

