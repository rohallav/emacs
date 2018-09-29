
;;;###autoload
(defun my-lisp-hook ()
  (rainbow-delimiters-mode-disable)
  (hl-line-mode -1)
  (lispy-mode 1)
  (yas-minor-mode 1))

;;;###autoload
(defun my-clojure-hook ()
  (company-mode 1)
  (setq company-backends
        '(company-capf company-dabbrev-code company-keywords company-files))
  (setq add-log-current-defun-function
        #'lisp-current-defun-name))

;; (setq cider-show-error-buffer t)
;; (setq cider-auto-select-error-buffer t)

(add-hook 'cider-mode-hook 'eldoc-mode)
(add-hook 'clojure-mode-hook 'subword-mode)
(add-hook 'emacs-lisp-mode-hook 'my-lisp-hook)
(add-hook 'clojure-mode-hook 'my-lisp-hook)
(add-hook 'clojure-mode-hook 'my-clojure-hook)
