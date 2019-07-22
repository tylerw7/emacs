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
			   paredit))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil paredit lsp-mode rust-mode multiple-cursors rainbow-delimiters base16-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Keybinding
;; Alt (meta) is used in i3wm, allow super key to be used
(setq x-super-keysym 'meta)

;; evil mode
(require 'evil)
(evil-mode 1)

;; Visual
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(show-paren-mode 1)
(setq show-paren-delay 0)

;; Built in line numbers now, yay!
(setq display-line-numbers 'relative)
(global-display-line-numbers-mode)

(load-theme 'base16-tomorrow-night t)

;; Rust
(setq rust-format-on-save t)
(require 'lsp-mode)

(add-hook 'rust-mode-hook #'lsp)
;; Currently no snippet support installed (Yasnippet), disable to avoid warnings
(setq lsp-enable-snippet nil)
(setq lsp-enable-completion-at-point t)

;; debugging
;; (setq debug-on-error t)

