;; KeysBindings

;; (ctrl+c)(s)
(global-set-key (kbd "C-c s") 'shell)

;; (ctl+x)(c) for delete space char
(global-set-key (kbd "C-x c") 'whitespace-cleanup)

;;step1-> (ctrl+space)(arrow) for selection
;;step2-> (ctrl+c)(c) for comment
;; or  -> (ctrl+c)(u) for uncomment
(global-set-key (kbd "C-c c") 'comment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)

(provide 'shawone-keys)
