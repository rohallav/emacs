;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; theme
(setq doom-theme 'eclipse)

;; settings for paper-theme looks more nice
(set-face-background 'show-paren-match "#8C0D40")
(add-to-list 'default-frame-alist '(background-color . "white"))

(delete-selection-mode)

(require 'visual-regexp-steroids)

(setq lispy-no-permanent-semantic t
      lispy-delete-backward-recenter nil
      lispy-helm-columns '(70 100)
      lispy-avy-style-symbol 'at-full)

(setq
 ;; text-scale-mode-step 1.0
 doom-variable-pitch-font (font-spec :family "IBM Plex Sans" :size 15 :weight 'medium)
 doom-font (font-spec :family "IBM Plex Mono" :size 15 :weight 'medium)
 doom-big-font (font-spec :family "IBM Plex Mono" :size 18 :weight 'light)
 doom-themes-enable-bold t
 doom-themes-enable-italic t
 doom-treemacs-enable-variable-pitch t
 )

;; default frame
(add-to-list 'default-frame-alist '(height . 100))

(add-to-list 'default-frame-alist '(width . 100))
(set-frame-parameter (selected-frame) 'alpha '(100 . 100))


(global-subword-mode 1)

;; when use vim keybinds again
;; (setq display-line-numbers-type 'relative)

;; (setq-default cursor-type 'bar)

;; modes
(after! lsp-mode
  (setq lsp-highlight-symbol-at-point nil)
  (setq lsp-eldoc-render-all nil)
  )

;; (add-hook 'prog-mode-hook #'rainbow-delimiters-mode-enable)
(add-hook 'prog-mode-hook #'+format|enable-on-save)


(load! "+general") ;; File manager stuff
(load! "+hydra")
(load! "+clojure")

;; (setq cider-default-repl-command "lein")
;; (setq cider-auto-mode nil)
