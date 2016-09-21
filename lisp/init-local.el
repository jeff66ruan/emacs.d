;; own configuration starts here

(add-to-list 'load-path (expand-file-name "lisp/local" user-emacs-directory))

(defvar savefile-dir (expand-file-name "savefile" user-emacs-directory)
  "This folder stores all the automatically generated save/history-files.")

;;; garbage collection setup
(defun my-minibuffer-setup-hook ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun my-minibuffer-exit-hook ()
  (setq gc-cons-threshold 800000))

(add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
(add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)

(require 'setup-editing)
(require 'setup-helm)
(require 'setup-helm-projectile)
(require 'setup-helm-gtags)
(require 'setup-cedet)
(require 'setup-c)

(provide 'init-local)
