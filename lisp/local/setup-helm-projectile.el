;; setup for projectile and helm-projectile

(require-package 'helm-projectile)

(require 'helm-projectile)


;; setup the projectile
(require-package 'projectile)
(require 'projectile)
(setq projectile-switch-project-action 'helm-projectile)
(setq projectile-indexing-method 'alien)
(setq projectile-mode-line nil)
(setq projectile-enable-caching t)
(setq projectile-svn-command "find . -type f -print0")
(setq projectile-globally-ignored-file-suffixes '(".o" ".d" ".a" ".su" ".xml" ".mk" ".lst"))
(setq projectile-globally-ignored-files '(".project" ".cproject" ".settings" "TAGS"))
(setq projectile-cache-file (expand-file-name  "projectile.cache" savefile-dir))
(projectile-global-mode t)


(setq projectile-completion-system 'helm)


;; enable Helm version of Projectile with replacment commands
(helm-projectile-on)


(provide 'setup-helm-projectile)
