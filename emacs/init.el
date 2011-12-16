(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings clojure-mode color-theme)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Turn on gui elements (for now)
;(dolist (mode '(menu-bar-mode tool-bar-mode)); scroll-bar-mode))
  ;(when (fboundp mode) (funcall mode 1)))

;; More blasphemy
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;(load-theme (quote (rjn))
;(enable-theme (quote (rjn)))
(setq evil-default-cursor "white")

(setq visible-bell nil)

(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(remove-hook 'prog-mode-hook 'esk-turn-on-idle-highlight-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (rjn)))
 '(custom-safe-themes (quote ("af0ca2b90b04dc0621fee7928829b3e3bddaf6f7" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
