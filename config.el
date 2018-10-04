;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; theme
;; (setq doom-theme 'eclipse)
(setq doom-theme 'paper)

;;;###autoload
(defun my-init-hook ()
  (delete-selection-mode)
  (global-subword-mode 1)
  (rainbow-delimiters-mode-disable)
  (require 'visual-regexp-steroids))

(defun my-c++-mode-hook ()
  (setq c-basic-offset 4)
  (c-set-offset 'substatement-open 0))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

(add-hook 'after-init-hook 'my-init-hook)
(add-hook 'c++-mode-hook 'my-init-hook)
(add-hook 'c-mode-common-hook 'my-init-hook)
(remove-hook! (prog-mode text-mode conf-mode) #'hl-line-mode)
(remove-hook! (prog-mode text-mode conf-mode) #'rainbow-delimiters-mode-enable)


;; (after! lispy-mode
;;   (define-key lispy-mode-map (kbd "]") nil)
;;   (define-key lispy-mode-map (kbd "}") nil))
;; (eval-after-load "lispy"
;;   `(progn
;;      (define-key lispy-mode-map (kbd "]") nil)
;;      (define-key lispy-mode-map (kbd "}") nil)))

(setq lispy-no-permanent-semantic t
      lispy-avy-style-symbol 'at-full)



;; (add-hook 'cider-connected-hook (lambda () (cider-load-file (expand-file-name "lispy-clojure.clj" lispy-site-directory))))

(setq
 ;; text-scale-mode-step 1.0
 doom-variable-pitch-font (font-spec :family "IBM Plex Sans" :size 15 :weight 'medium)
 doom-font (font-spec :family "IBM Plex Mono" :size 15 :weight 'medium)
 doom-big-font (font-spec :family "IBM Plex Mono" :size 18 :weight 'light)
 doom-themes-enable-bold t
 doom-themes-enable-italic t
 doom-treemacs-enable-variable-pitch t)

;; default frame
(add-to-list 'default-frame-alist '(height . 100))
(add-to-list 'default-frame-alist '(width . 100))
(add-to-list 'default-frame-alist '(background-color . "white"))

(set-face-background 'show-paren-match "#8C0D40")
(set-frame-parameter (selected-frame) 'alpha '(100 . 100))

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

(load! "+general")
(load! "+hydra")
(load! "+clojure")
