;; init.el - my convuluted emacs config <ashleyis@me.com>
;; layout stolen from: https://github.com/stevej/emacs

; add /usr/local/bin to exec-path (brew etc)
(push "/usr/local/bin" exec-path)

; quick edit init
(defun ein () 
  (find-file "~/.emacs.d/init.el"))

; setup ELPA repos
(setq package-archives '(("ELPA" . "http://tromey.com/elpa/") 
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")))

(require 'cl)

(defvar *emacs-load-start* (current-time))

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/customisations")
(add-to-list 'load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/utilities")
(add-to-list 'load-path "~/.emacs.d/vendor")

(load "~/.emacs.d/load-directory.el")
(mapcar 'load-directory '("~/.emacs.d/utilities"))

(mapcar 'load-directory '("~/.emacs.d/customisations"))

(message "My .emacs loaded in %ds" (destructuring-bind (hi lo ms) (current-time)
				     (- (+ hi lo) (+ (first *emacs-load-start*) (second *emacs-load-start*)))))
