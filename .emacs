;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa-stable" . "http://stable.melpa.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))

(package-initialize)
(add-to-list 'package-pinned-packages '(elixir-mode . "melpa-stable") t)
;; disable line wrap
(setq default-truncate-lines t)

;; make side by side buffers function the same as the main window
(setq truncate-partial-width-windows nil)

;; Add F12 to toggle line wrap
(global-set-key [f12] 'toggle-truncate-lines)
;;(add-hook 'after-init-hook 'global-company-mode)

;; Save temp files to system tmp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(add-to-list 'load-path "~/.emacs.d")

(require 'ido)
(ido-mode t)
(require 'uniquify)
(setq uniqueify-buffer-name-style 'reverse)
(global-font-lock-mode 1)
(global-linum-mode 1)
(desktop-save-mode 1)
(setq history-length 250)
(add-to-list 'desktop-globals-to-save 'file-name-history)


(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))


;; JS2
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-basic-offset 2)
(setq js2-use-font-lock-faces t)


(require 'ruby-mode)
(add-to-list 'auto-mode-alist '("\\.rb" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile" . ruby-mode))


(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js" . js2-mode))

(require 'haskell-mode)
(add-to-list 'auto-mode-alist '("\\.hs" . haskell-mode))


(require 'elm-mode)
(add-to-list 'auto-mode-alist '("\\.elm" . elm-mode))

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml" . yaml-mode))


(require 'php-mode)
(add-to-list 'auto-mode-alist '("\\.php" . php-mode))



(setq-default mode-line-buffer-identification
              (list 'buffer-file-name
                    (propertized-buffer-identification "%12f")
                    (propertized-buffer-identification "%12b") ))


(add-hook 'dired-mode-hook
          (lambda ()
            ;; TODO: handle (DIRECTORY FILE ...) list value for dired-directory
            (setq mode-line-buffer-identification
                  ;; emulate "%17b" (see dired-mode):
                  '(:eval
                    (propertized-buffer-identification
                     (if (< (length default-directory) 17)
                         (concat default-directory
                                 (make-string (- 17 (length default-directory))
                                              ?\s))
                       default-directory))))))

;whitespace
(setq whitespace-style (quote
  ( spaces tabs newline space-mark tab-mark newline-mark)))
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)) ;; only show bad whitespace



(require 'magit)
;; change magit diff colors

(setq sql-postgres-program "/usr/local/bin/psql")


(require 'color-theme)
;;(require 'zenburn-theme)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yaml-mode crystal-mode cargo rust-mode twittering-mode ac-helm helm-aws zenburn-theme slack php-mode nzenburn-theme magit lua-mode logito js2-mode inflections haskell-mode elm-mode color-theme-twilight color-theme-heroku color-theme-blackboard anything)))
 '(safe-local-variable-values
   (quote
    ((emacs-lisp-docstring-fill-column . 75)
     (ruby-compilation-executable . "ruby")
     (ruby-compilation-executable . "ruby1.8")
     (ruby-compilation-executable . "ruby1.9")
     (ruby-compilation-executable . "rbx")
     (ruby-compilation-executable . "jruby")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

 (set-face-attribute 'default nil
                :family "Monaco" :height 120 :weight 'normal)


(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
