;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alex Gravem"
      user-mail-address "gravem@gmail.com")

;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;; (setq doom-font (font-spec :family "D2CodingLigature Nerd Font" :size 18 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "Rec Mono Casual" :size 16))
(setq doom-font (font-spec :family "Operator Mono Lig" :size 18 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Rec Mono Casual" :size 16))

;; (setq display-line-numbers-type 'relative)
(setq display-line-numbers-type nil)

;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
                                        ;
(use-package! org
  :config
  (require 'org-habit)
  :custom
  (org-directory "~/org/")
  (org-agenda-files (directory-files-recursively "~/org/" "\\.org$"))

  (org-log-into-drawer t)
  (org-log-reschedule 'note)
  (org-log-done 'time)

  (org-highest-priority ?A)
  (org-lowest-priority ?D)
  (org-default-priority)
  (org-fancy-priorities-list '("[A]" "[B]" "[C]" "[D]"))
  (org-priority-faces
   '((?A :foreground "#FE5E41" :weight bold))
   '((?B :foreground "#F3C178" :weight bold))
   '((?C :foreground "#D8F1A0" :weight bold))
   '((?D :foreground "#F8F8F8" :weight bold))))

(use-package! org-superstar
  :custom
  (org-superstar-headline-bullets-list '("☰" "☱" "☲" "☳" "☴" "☵" "☶" "☷" "☷" "☷" "☷")))

(use-package! mindre-theme
  :config
  (load-theme 'mindre 1)
  :custom
  (mindre-use-more-bold t)
  (mindre-use-more-fading t)
  (mindre-use-faded-lisp-parens t)
  (minfre-faded-lisp-parens-modes '(emacs-lisp-mode lisp-mode scheme-mode racket-mode)))

(defun k/find-file-right ()
  "Edit file in a vertical split, to the right"
  (interactive)
  (let ((split-width-threshold 0)
        (split-height-threshold nil))
    (call-interactively 'find-file-other-window)))

(global-set-key (kbd "C-c f .") 'k/find-file-right)
