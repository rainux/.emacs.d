(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
  (lambda (s)
    (let (el-get-master-branch)
      (end-of-buffer)
      (eval-print-last-sexp)))))

;; now either el-get is `require'd already, or have been `load'ed by the
;; el-get installer.

;; set local recipes
(setq
 el-get-sources
 '((:name emacs-rails
          :description "Minor mode for editing RubyOnRails code in Emacs"
          :type github
          :pkgname "remvee/emacs-rails"
          )))

;; now set our own packages
(setq
 my:el-get-packages
 '(el-get                               ; el-get is self-hosting
   auto-complete                        ; complete as you type with overlays
   color-theme-desert
   Enhanced-Ruby-Mode
   escreen                              ; screen for emacs, C-\ C-h
   evil                                 ; evil = Emacs + Vim
   rinari
   ))

(setq my:el-get-packages
      (append
       my:el-get-packages
       (loop for src in el-get-sources collect (el-get-source-name src))))

;; install new packages and init already installed packages
(el-get 'sync my:el-get-packages)

(provide 'init-el-get)
