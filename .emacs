(menu-bar-mode 0)
(tool-bar-mode 0)
(add-to-list 'load-path "/home/svs/elisp")

;; super quick jump mode
;(setq inferior-lisp-program "/usr/bin/sbcl")
(setq inferior-lisp-program "/home/svs/.clojure/clojure")
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime")
;(require 'slime)
;(slime-setup)
;(add-to-list 'load-path "/home/svs/.emacs.d/elpa/swank-clojure-1.1.0")
;(setq swank-clojure-binary "/home/svs/.clojure/clojure")
;(require 'swank-clojure-autoloads)

;; clojure-mode
(add-to-list 'load-path "/home/svs/.emacs.d/elpa/clojure-mode-1.7.1")
(require 'clojure-mode)

;; swank-clojure
(add-to-list 'load-path "/home/svs/.emacs.d/elpa/swank-clojure-1.1.0")

(setq swank-clojure-jar-path "~/.clojure/clojure.jar"
      swank-clojure-extra-classpaths (list
				      "~/.clojure/clojure-contrib.jar"
				      "~/.clojure/mysql-connector-java-5.1.13-bin.jar"))

(require 'swank-clojure-autoloads)

;; slime
(eval-after-load "slime" 
  '(progn (slime-setup '(slime-repl))))

;(add-to-list 'load-path "~/opt/slime")
(require 'slime)
(slime-setup) 






(require 'ido)
(ido-mode t)

(autoload 'run-scheme "cmuscheme" "Run an inferior Scheme" t)
(setq scheme-program-name "guile")

(global-font-lock-mode 1)
 
(desktop-save-mode 1)
(setq history-length 250)
(add-to-list 'desktop-globals-to-save 'file-name-history)
;(desktop-read)

;; JS2
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-basic-offset 2)
(setq js2-use-font-lock-faces t)

;(require 'ruby-mode)
(add-to-list 'auto-mode-alist '("\\.rb" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake" . ruby-mode))
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml" . haml-mode))
(add-hook 'haml-mode-hook
          '(lambda () (setq indent-tabs-mode nil)))

(require 'magit)
;(require 'sass-mode)
;(add-to-list 'auto-mode-alist '("\\.sass" . sass-mode))

(require 'mingus)
(autoload 'mingus "mingus-stays-home")

;(setq ri-ruby-script "/home/svs/elisp/ri-emacs.rb")
;(autoload 'ri "/home/svs/elisp/ri-ruby.el" nil t)
;(require 'rinari)
;(require 'rhtml-mode)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(dired-listing-switches "-Bal "))
;(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
; '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "b&h" :family "Lucida Grande")))))


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
