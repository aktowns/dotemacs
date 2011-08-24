;; pretty git is pretty
(require 'magit)

(when (window-system) ; console no have xpm!
  (nyan-mode))

;; tab complete snipepts
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")

;; coffescript!
(autoload 'coffee-mode "coffee-mode.el" "Editing teh coffee scripts" t)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;; ido ido!
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

;; aaack
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

(require 'paredit)

(require 'android-mode)

(autoload 'clojure-mode "clojure-mode.el" "Clojure mode" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
;(add-hook 'clojure-mode-hook (lambda () (paredit-mode nil)))

(eval-after-load "slime"
  '(progn (slime-setup '(slime-repl))))
(require 'slime)
(slime-setup)


;; i <3 cmd+t
(require 'textmate)
(textmate-mode t)

(autoload 'markdown-mode "markdown-mode.el" 
  "Major mode for editing Markdown files" t) 
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-hook 'lua-mode-hook 'turn-on-font-lock)


