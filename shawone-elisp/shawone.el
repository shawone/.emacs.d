(set-language-environment "UTF-8")

(add-to-list 'load-path "~/.emacs.d/shawone-elisp/")
(column-number-mode t)

(setq inhibit-startup-screen t          ;do not display a startup screen
      autopair-autowrap t               ;wrap the region with the paired characters
      mouse-yank-at-point t             ;paste at cursor position
      scroll-preserve-screen-position t ;restore cursor after PgUp/PgDown

      ;; Sentences end with one space when M-q `fill-paragraph' is called
      sentence-end-double-space nil

      compilation-auto-jump-to-first-error t
      compilation-scroll-output t

      ;; C-k kills whole line and newline if at beginning of line
      kill-whole-line t

      ;; Don't want to answer yes everytime
      save-abbrevs 'silently

      ;; Autosave each change)
      bookmark-save-flag 1

      ;; Use Window system clipboard
      x-select-enable-clipboard t
      yank-pop-change-selection t

      ;; Case-insensitive `find-file'
      read-file-name-completion-ignore-case t
      read-buffer-completion-ignore-case t)

;; set indent linux style by default
(setq c-default-style "linux"
      c-basic-offset 4)

;; switch to kernel coding style: M-x kernel-mode
;; back to linux c coding style: M-x c-mode
(defun kernel-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."
  (interactive)
  (c-mode)
  (c-set-style "K&R")
  (setq c-basic-offset 8))

;; saved-places
(setq-default save-place t)
(require 'saveplace)
(setq save-place-file "~/.emacs.d/saved-places")

;; ignore files
(setq completion-ignored-extensions '(".o" ".a" ".so"
                                      ".elc"
                                      ".class" ".dll"
                                      "~"
                                      ".git/"
                                      ".gitignore"
                                      ".hg/"
                                      ".hgignore"
                                      ".svn/"))

;toolbar is visible by default on X emacs so disable it
(if window-system
    (tool-bar-mode -1))
(blink-cursor-mode -1)
(if window-system
    (scroll-bar-mode -1))
(column-number-mode 1)
(winner-mode 1)
;; Replace selection
(delete-selection-mode 1)

;; Highlight current line
(if (boundp 'global-hl-line-sticky-flag) ;introduced in emacs 24.1
    (setq global-hl-line-sticky-flag t))
(global-hl-line-mode 1)

;; Whenever an external process changes a file underneath emacs, and there
;; was no unsaved changes in the corresponding buffer, just revert its
;; content to reflect what's on-disk.
;; source: https://github.com/dimitri/emacs-kicker/blob/master/init.el
(global-auto-revert-mode 1)

;; Show the matching parenthesis
(require 'paren)
(show-paren-mode 1)

 ;; Go to the next page automatically in Doc-View
(setq doc-view-continuous t)

; Automatically 'chmod' scripts as they are saved
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;; Narrowing is convenient
(put 'widen 'disabled nil)
(put 'narrow-to-defun 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'org-narrow-to-subtree 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

(defadvice narrow-to-region (after narrow-to-region-unmark
activate compile)
  "Disable selection after `narrow-to-region'"
  (deactivate-mark))

;; KeysBinding
(require 'shawone-keys)

;; Load path theme & load theme
(setq my-theme-dir "~/.emacs.d/shawone-themes/")
(add-to-list 'load-path my-theme-dir)
(setq custom-theme-directory my-theme-dir)
(load-theme 'shawone t)
