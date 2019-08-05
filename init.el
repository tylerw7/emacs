(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; temporary https "fix" for gnu packages (instead of using http)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; package list
(setq installed-packages '(rainbow-delimiters
			   multiple-cursors
			   evil
			   base16-theme
			   rust-mode
			   lsp-mode
			   paredit
			   pdf-tools
			  ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (pdf-tools evil paredit lsp-mode rust-mode multiple-cursors rainbow-delimiters base16-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; error debugging
(setq debug-on-error t)

;; rest of config in org elisp blocks
(org-babel-load-file "~/.emacs.d/my-init.org")

