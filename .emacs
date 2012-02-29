(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq-default js-indent-level 2)

(define-key text-mode-map (kbd "<tab>") 'tab-to-tab-stop)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
                        64 68 72 76 80 84 88 92 96 100 104 108 112
                        116 120))


(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
(require 'coffee-mode)
(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

(add-to-list 'load-path "~/.emacs.d/haml-mode/")
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\.haml$" . haml-mode))

(add-to-list 'auto-mode-alist '("\.rake$" . ruby-mode))

(add-to-list 'load-path "~/.emacs.d/feature-mode")
;; optional configurations
;; default language if .feature doesn't have "# language: fi"
;(setq feature-default-language "fi")
;; point to cucumber languages.yml or gherkin i18n.yml to use
;; exactly the same localization your cucumber uses
;(setq feature-default-i18n-file "/path/to/gherkin/gem/i18n.yml")
;; and load feature-mode
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))


;; recommended keybindings for org mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(add-to-list 'load-path "~/.emacs.d/")
(require 'word-count)
(require 'color-theme-setup)

(add-hook 'org-mode-hook (lambda () (auto-fill-mode)))
