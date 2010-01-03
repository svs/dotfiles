(menu-bar-mode 0)
(tool-bar-mode 0)
(add-to-list 'load-path "/home/svs/elisp")
;(add-to-list 'load-path "/home/svs/elisp/rhtml")
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")
;(progn (cd "~/elisp") (normal-top-level-add-subdirs-to-load-path))
;(progn (cd "~"))
;; super quick jump mode
(require 'ido)
(ido-mode t)


;(require 'color-theme)
;(setq color-theme-is-global t)
;(color-theme-initialize)
;(color-theme-hober)

(global-font-lock-mode 1)
 
(desktop-save-mode 1)
(setq history-length 250)
(add-to-list 'desktop-globals-to-save 'file-name-history)
;(desktop-read)

;; JS2
;(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
 
(setq js2-basic-offset 2)
(setq js2-use-font-lock-faces t)

;(show-paren-mode t)

;(autoload 'screen-lines-mode "screen-lines"
;          "Toggle Screen Lines minor mode for the current buffer." t)
;(autoload 'turn-on-screen-lines-mode "screen-lines"
;             "Turn on Screen Lines minor mode for the current buffer." t)
;(autoload 'turn-off-screen-lines-mode "screen-lines"
;            "Turn off Screen Lines minor mode for the current buffer." t)

;(load-library "g")

;(setq tramp-default-method "ssh")
; (setq tramp-default-user "svs"
;           tramp-default-host "svs.webfactional.com")


;(require 'ruby-mode)
(add-to-list 'auto-mode-alist '("\\.rb" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake" . ruby-mode))
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml" . haml-mode))
(add-hook 'haml-mode-hook
          '(lambda () (setq indent-tabs-mode nil)))

(require 'git)
(require 'magit)
;(require 'sass-mode)
;(add-to-list 'auto-mode-alist '("\\.sass" . sass-mode))
;(setq py-python-command-args '("-colors" "NoColor"))
(require 'mingus)
(autoload 'mingus "mingus-stays-home")
;(setq ri-ruby-script "/home/svs/elisp/ri-emacs.rb")
;(autoload 'ri "/home/svs/elisp/ri-ruby.el" nil t)
;(require 'rinari)
;(require 'rhtml-mode)