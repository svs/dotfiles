;; disable line wrap
(setq default-truncate-lines t)

;; make side by side buffers function the same as the main window
(setq truncate-partial-width-windows nil)

;; Add F12 to toggle line wrap
(global-set-key [f12] 'toggle-truncate-lines)

(add-to-list 'load-path "/home/svs/elisp")
(require 'ido)
(ido-mode t)

(global-font-lock-mode 1)
 
(desktop-save-mode 1)
(setq history-length 250)
(add-to-list 'desktop-globals-to-save 'file-name-history)

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
;;; rhtml-mode
(add-to-list 'load-path "/home/svs/elisp/rhtml")
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
	  (lambda () (rinari-launch)))

(require 'magit)


(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))


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