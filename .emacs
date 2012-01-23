(message "Loading ~/.emacs ....")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(standard-indent 2))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(setq tab-width 2)

;;; Use spaces instead of tabs
(setq ruby-mode-hook
      (function (lambda ()
		  (setq indent-tabs-mode nil)
		  (setq ruby-indent-level 2))))

 ;; These are just customization for testing purpose
(setq set-fill-column 80)
(setq make-backup-files nil)

 ;; Customizing color scheme
(set-background-color "black")
(set-foreground-color "purple")
(set-cursor-color "red") 
(global-linum-mode 1)

;;; Lisp (SLIME) interaction
(setq inferior-lisp-program "clisp")
(add-to-list 'load-path "~/.slime")
(require 'slime)
(slime-setup)

(global-font-lock-mode t)
(show-paren-mode 1)
(add-hook 'lisp-mode-hook '(lambda () (local-set-key (kbd "RET") 'newline-and-indent)))
(setq lisp-mode-hook 'turn-off-auto-fill)
(setq ruby-mode-hook 'turn-off-auto-fill)

;;; Rinari setup for Rails

;; Interactively do things
(require 'ido)
(ido-mode t)

;; Rinari
(add-to-list 'load-path "~/apps/rinari")
(require 'rinari)

(message "Loaded ~/.emacs !!!")