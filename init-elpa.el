(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
    starter-kit
    starter-kit-bindings
    starter-kit-js
    starter-kit-lisp
    starter-kit-ruby
    buffer-move
    flymake-ruby
    magit
    ruby-electric
    ruby-test-mode
    )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'init-elpa)
