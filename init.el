;; generell
(global-display-line-numbers-mode 1)
;; naga-blue
(add-to-list 'custom-theme-load-path
		 "~/themes/naga-blue")
;;(load-theme 'naga-blue t)
(setq inhibit-startup-message t)    ;; Hide the startup message

(load-theme 'material t)   		 ;; Load material theme
;; Melpa
(require 'package)
(add-to-list 'package-archives
		 '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; ===========
;; PACKAGES
;; ===========:
(defvar myPackages

  '(better-defaults        		 ;; Set up some better Emacs defaults
	elpy ;; python
    material-theme         		 ;; Theme
    evil
    pdf-tools
;;    python-mode
    )

  )


;; Scans the list in myPackages

;; If the package listed is not already installed, install it

(mapc #'(lambda (package)

 		 (unless (package-installed-p package)

   		 (package-install package)))

      myPackages)


;; ===================================

;; Basic Customization

;; ===================================



;; ========
;; ENABLE
;; =========


;; Enable evil
(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Enable elpy
(elpy-enable)
;; User-Defined init.el ends here


