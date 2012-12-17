;; Place personal bindings here

(add-to-list 'load-path "~/.emacs.d/lib/jade-mode")
(require 'sws-mode)
(require 'jade-mode)    
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))


(add-to-list 'load-path "~/.emacs.d/lib/color-theme")
 
;; color-theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-hober) 

;;jslint
(add-to-list 'load-path "~/.emacs.d/lib/lintnode")
(require 'flymake-jslint)
;; Make sure we can find the lintnode executable
(setq lintnode-location "~/.emacs.d/lib/lintnode")
;; JSLint can be... opinionated
(setq lintnode-jslint-excludes (list 'nomen 'undef 'plusplus 'onevar 'white))
;; Start the server when we first open a js file and start checking
(add-hook 'js-mode-hook
          (lambda ()
            (lintnode-hook)))

;; Flymake Cursor
(add-to-list 'load-path "~/.emacs.d/lib/flymake-cursor")
;; Nice Flymake minibuffer messages
(require 'flymake-cursor)



(add-hook 'js-mode-hook
          (lambda ()
            ;; Scan the file for nested code blocks
            (imenu-add-menubar-index)
            ;; Activate the folding mode
            (hs-minor-mode t)))



;; git-commit-mode
(require 'git-commit)

(require 'dirtree)












