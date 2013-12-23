;;; Package --- ecb configuration
;;; Commentary: 

;; ============================
;; cedet:    http://cedet.sourceforge.net/
;; ecb:      https://github.com/alexott/ecb/
;; ============================
;; cedet config sample
;;--------------------
;; Enable EDE (Project Management) features
;;(global-ede-mode 1)
;; Enable EDE for a pre-existing C++ project
;;(ede-cpp-root-project "NAME" :file "~/myproject/Makefile")
;; Enabling Semantic (code-parsing, smart completion) features
;; Select one of the following:
;; * This enables the database and idle reparse engines
;;(semantic-load-enable-minimum-features)
;; * This enables some tools useful for coding, such as summary mode,
;;   imenu support, and the semantic navigator
;;(semantic-load-enable-code-helpers)
;; * This enables even more coding tools such as intellisense mode,
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;;(semantic-load-enable-gaudy-code-helpers)
;; * This enables the use of Exuberant ctags if you have it installed.
;;   If you use C++ templates or boost, you should NOT enable it.
;;(semantic-load-enable-all-exuberent-ctags-support)
;;   Or, use one of these two types of support.
;;   Add support for new languages only via ctags.
;;(semantic-load-enable-primary-exuberent-ctags-support)
;;   Add support for using ctags as a backup parser.
;;(semantic-load-enable-secondary-exuberent-ctags-support)
;; Enable SRecode (Template management) minor-mode.
;;(global-srecode-minor-mode 1)


;;; Code:

(exz-add-search-path "site-lisp/cedet")
(exz-add-search-path "site-lisp/ecb")

(defun exz-ecb-add-source (path alias)
  (if (file-exists-p path)
      (ecb-add-source-path path alias t)
    (message "exz-ecb-addsource: %s not found, ignored." alias))
  )

(defun exz-ecb-load ()
  (interactive)
  (exz-load-file "site-lisp/cedet/common/cedet.el")
  (require 'cedet)
  (global-ede-mode 1)
  (exz-load-file "site-lisp/ecb/ecb.el")

  (custom-set-variables
   '(ecb-options-version "2.40")
   '(ecb-source-path nil)
   '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
   '(ecb-tip-of-the-day nil)
   '(ecb-show-sources-in-directories-buffer 'always)
   ;;'(ecb-fix-window-size t)
   ;;'(ecb-compile-window-height 12)
   )
  ;; 减小在console下tree的宽度
  (if (display-graphic-p)
      ()
    (custom-set-variables
     '(ecb-tree-indent 1)
     '(ecb-tree-expand-symbol-before nil)
     '(ecb-tree-buffer-style (quote ascii-no-guides))
     ))

  (require 'ecb)
  ;; 解决因为ssh别名导致not-accessible ignored问题
  (setq ecb-ping-options (list "-c" "1" "127.0.0.1"))

  (ecb-activate)
  (ecb-layout-switch "left13")
  (exz-ecb-add-source "~/work/vimwiki/org" "org")
  (exz-ecb-add-source "~/work" "work")
  )

(provide 'exz-ecb)

;;; exz-ecb.el ends here
