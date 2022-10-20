
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; highlight parenthesis
(add-to-list 'load-path "~/.emacs.d/elpa/")
(require 'mic-paren)
(paren-activate)

;; highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#3e4446")
(set-face-foreground 'highlight nil)

;; highlight all characteres > 80 column
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)

;; mode linux style
(setq c-default-style "K&R"
      c-basic-offset 8)

;; clean whitespace after 2 retlines
(setq kill-whole-line t)

;; show column number
(column-number-mode t)

;;----------------------- KeysBindings -----------------------;;
;; (ctrl+c)(s)
(global-set-key (kbd "C-c s") 'shell)

;; (ctl+x)(c) for delete trailing whitespace
(global-set-key (kbd "C-x c") 'delete-trailing-whitespace)

;;step1-> (ctrl+space)(arrow) for selection
;;step2-> (ctrl+c)(c) for comment
;; or  -> (ctrl+c)(u) for uncomment
(global-set-key (kbd "C-c c") 'comment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)

;;------------------------- Powerline ------------------------;;
(require 'powerline)
(powerline-default-theme)
(setq powerline-default-separator 'utf-8)
