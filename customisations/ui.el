;; GUI specific
(when (window-system)
  ; hide toolbar and scrollbars
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  ; pretty colours
  (require 'color-theme)
  (setq color-theme-is-global t)
  (load-file "~/.emacs.d/themes/color-theme-tomorrow.el")
  (color-theme-tomorrow))

; force new frames into existing window
(setq ns-pop-up-frames nil)

; disable splash screen and startup message
(setq inhibit-startup-message t)

; line numbers
(global-linum-mode 1)
(setq linum-format "%3d ")




