;; init.el - my convuluted emacs config <ashleyis@me.com>

; add /usr/local/bin to exec-path (brew etc)
(push "/usr/local/bin" exec-path)

; setup ELPA repos
(setq package-archives '(("ELPA" . "http://tromey.com/elpa/") 
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")))

(require 'cl)

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/customisations")
(add-to-list 'load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/vendor")
