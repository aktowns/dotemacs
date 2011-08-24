;; GUI specific
(when (window-system)
  ;; make the window a little bigger
  (set-frame-width (selected-frame) 95)
  ;; hide toolbar and scrollbars
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  ;; pretty colours
  (require 'color-theme)
  (setq color-theme-is-global t)
  (load-file "~/.emacs.d/themes/color-theme-tomorrow.el")
  (color-theme-tomorrow))

;; force new frames into existing window
(setq ns-pop-up-frames nil)

;; inserts over highlighted regions when you press a key rather than writing at the point.
(delete-selection-mode 1)

;; disable splash screen and startup message
(setq inhibit-startup-message t)

;; line numbers
(global-linum-mode 1)
(setq linum-format "%3d ")

(setq-default tab-width 4)

;; give coffee script only 2 space tabs
(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2))
(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))


