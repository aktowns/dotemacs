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

(vendor 'color-theme)
(vendor 'magit)
(vendor 'nyan-mode)
(vendor 'yasnippet)
(vendor 'android-mode)
(vendor 'coffee-mode)
(vendor 'clojure-mode)
(vendor 'paredit)
(vendor 'textmate)
(vendor 'slime)

(mapcar 'load-directory '("~/.emacs.d/customisations"))

(message "My .emacs loaded in %ds" 
	 (destructuring-bind (hi lo ms) (current-time)
	   (- (+ hi lo) (+ (first *emacs-load-start*) (second *emacs-load-start*)))))




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe-mode 0 nil (fringe))
 '(nyan-bar-length 24)
 '(nyan-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
