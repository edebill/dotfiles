
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)))

(defun color-theme-dark ()
  "switch to dark color theme"
  (interactive)
  (color-theme-hober))

(defun color-theme-light ()
  "switch to light color theme"
  (interactive)
;  (color-theme-blippblopp))
  (color-theme-emacs-21))

(provide 'color-theme-setup)
