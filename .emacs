(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Place to put local packages.
  (let* ((path (expand-file-name "lisp" user-emacs-directory))
         (local-pkgs (mapcar 'file-name-directory (directory-files-recursively path ".*\\.el"))))
    (if (file-accessible-directory-p path)
        (mapc (apply-partially 'add-to-list 'load-path) local-pkgs)
      (make-directory path :parents)))

(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(desktop-save-mode 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d19f00fe59f122656f096abbc97f5ba70d489ff731d9fa9437bac2622aaa8b89" "78e9a3e1c519656654044aeb25acb8bec02579508c145b6db158d2cfad87c44e" "776c1ab52648f98893a2aa35af2afc43b8c11dd3194a052e0b2502acca02bfce" default)))
 '(package-selected-packages
   (quote
    (zenburn-theme vs-dark-theme ob-translate google-translate ubuntu-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'ubuntu)

(require 'google-translate)
(require 'google-translate-smooth-ui)
(global-set-key "\C-ct" 'google-translate-smooth-translate)

(setq google-translate-translation-directions-alist
      '(("auto" . "en") ("auto" . "ru") ("auto" . "uk") ("auto" . "no")("auto" . "ro")("auto" . "tr")))

;; Fix error of "Failed to search TKK"
(defun google-translate--get-b-d1 ()
    ;; TKK='427110.1469889687'
  (list 427110 1469889687))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")



