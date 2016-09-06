;; own configuration starts here

(add-to-list 'load-path (expand-file-name "lisp/local" user-emacs-directory))

(defvar savefile-dir (expand-file-name "savefile" user-emacs-directory)
  "This folder stores all the automatically generated save/history-files.")

(setq gc-cons-threshold 100000000) ; ie 100mb, default is 800kb

(require 'setup-editing)
(require 'setup-helm)
(require 'setup-helm-projectile)
(require 'setup-helm-gtags)
(require 'setup-cedet)
(require 'setup-c)

(provide 'init-local)
