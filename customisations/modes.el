; pretty git is pretty
(require 'magit)

; :(
(nyan-mode)

; tab complete snipepts
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")

; coffescript!
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;; Put backup files (ie foo~) in one place too. (The backup-directory-alist
;; list contains regexp=>directory mappings; filenames matching a regexp are
;; backed up in the corresponding directory. Emacs will mkdir it if necessary.)
(defvar backup-dir (concat "/tmp/emacs_backups/" (user-login-name) "/"))
(setq backup-directory-alist (list (cons "." backup-dir)))

; ido ido!
(require 'ido)
(ido-mode t)
;;(setq ido-enable-flex-matching t) ; fuzzy matching is a must have
;; This tab override shouldn't be necessary given ido's default
;; configuration, but minibuffer-complete otherwise dominates the
;; tab binding because of my custom tab-completion-everywhere
;; configuration.
(add-hook 'ido-setup-hook
 (lambda ()
   (define-key ido-completion-map [tab] 'ido-complete)))

;; gist integration
(require 'gist)

; smart-tab
;(require 'smart-tab)
;(global-smart-tab-mode 1)
;(setq smart-tab-using-hippie-expand nil)

; aaack
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

(require 'paredit)

(require 'android-mode)

(require 'clojure-mode)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
;(add-hook 'clojure-mode-hook (lambda () (paredit-mode nil)))

(require 'slime)

; i <3 cmd+t
(require 'textmate)
(textmate-mode t)

