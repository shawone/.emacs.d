;; KeysBindings

(define-key mode-specific-map (kbd "C-b") 'shell)

(global-set-key (kbd "C-x c") 'whitespace-cleanup)
(global-set-key (kbd "C-c c") 'comment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)
