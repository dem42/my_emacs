;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; STUFF COMMON FOR ALL EMACS ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; don't ring on error ffs
(setq inhibit-startup-message t
      visible-bell 1)
;; hide bar
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(global-display-line-numbers-mode 1)
;; yes no is annoying
(fset 'yes-or-no-p 'y-or-n-p)
(column-number-mode 1)

;; Customize search to show number of results and to
;; interpret whitspace as a non-greedy match anything expression
(setq isearch-lazy-count t
      lazy-count-prefix-format "(%s/%s) "
      lazy-count-suffix-format nil
      search-whitespace-regexp ".*?")

;; this is for custom variables set from emacs. we don't want them to pollute .emacs file
(setq custom-file (locate-user-emacs-file "custom.vars.el"))
(load custom-file 'noerror 'nomessage)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; INITING THE PACKAGES       ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package evil
  :ensure t
  :init (evil-mode 1))

;; setup color theme
(load-theme 'modus-vivendi t)

;; setup projectile
(use-package projectile
  :ensure t
  :init
  (progn
    (projectile-mode +1)
    (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
    (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)))

(setq projectile-project-root "c:/workspace")
; (with-eval-after-load 'flycheck
;  (flycheck-inline-mode))

(ido-mode 1)
(setq ido-everywhere t
      ido-enable-flex-matching t)
;; (use-package ido-vertical-mode
;;   :ensure t
;;   :init
;;   (ido-vertical-mode 1))
;; (setq ido-vertical-define-keys 'C-n-and-C-p-only)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; DEFAULT BEHAVIOUR          ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; set org mode default
(setq-default major-mode 'org-mode)
(setq org-cycle-emulate-tab 'white)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; KEYBINDINGS                ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
