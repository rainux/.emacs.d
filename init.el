(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

(require 'init-elpa)
(require 'init-el-get)

(require 'init-evil)
(require 'init-ruby-mode)

;;------------------------------------------------------------------------------
;; Simple and quick settings
;;------------------------------------------------------------------------------

(menu-bar-mode)
(set-default-font "Monaco 13")
(color-theme-desert)

; (setq make-backup-files nil)
; (setq auto-save-default nil)
; (setq-default indent-tabs-mode nil)
; (setq-default tab-width 2)

;; Copy/paste with C-c and C-v and C-x, check out C-RET too
(cua-mode)

(require 'buffer-move)
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

(global-set-key (kbd "C-x C-g") 'magit-status)

;; C-x C-j opens dired with the cursor right on the file you're editing
(require 'dired-x)


;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
