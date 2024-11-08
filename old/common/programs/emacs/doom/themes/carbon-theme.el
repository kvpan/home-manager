
;; If you are distributing this theme, please replace this comment
;; with the appropriate license attributing the original VS Code
;; theme author.

(deftheme carbon "A nice dark theme.")


(let (
(color0 "#152031")
(color1 "#bac8cb")
(color2 "#293445")
(color3 "#000000")
(color4 "#bbbbbb")
(color5 "#0e4862")
(color6 "#2e394a")
(color7 "#fffff7")
(color8 "#3d4859")
(color9 "#ffffff")
(color10 "#1b2a40")
(color11 "#b2c3c7")
(color12 "#606b7c")
(color13 "#eb6689")
(color14 "#f6bead")
(color15 "#ffb1a9")
(color16 "#61a8a7")
(color17 "#c8cccd")
(color18 "#9e74ae")
(color19 "#3b485c")
(color20 "#242f40")
(color21 "#c9d7da")
(color22 "#202b3c")
(color23 "#c5d3d6"))


(custom-theme-set-faces
'carbon


;; BASIC FACES
`(default ((t (:background ,color0 :foreground ,color1 ))))
`(hl-line ((t (:background ,color2 ))))
`(cursor ((t (:background ,color3 :foreground ,color4 ))))
`(region ((t (:background ,color5 ))))
`(secondary-selection ((t (:background ,color6 ))))
`(fringe ((t (:background ,color0 ))))
`(mode-line-inactive ((t (:background ,color2 :foreground ,color7 ))))
`(mode-line ((t (:background ,color8 :foreground ,color9 ))))
`(minibuffer-prompt ((t (:background ,color10 :foreground ,color11 ))))
`(vertical-border ((t (:foreground ,color12 ))))


;; FONT LOCK FACES
`(font-lock-builtin-face ((t (:foreground ,color13 ))))
`(font-lock-constant-face ((t (:foreground ,color14 ))))
`(font-lock-function-name-face ((t (:foreground ,color15 ))))
`(font-lock-keyword-face ((t (:foreground ,color13 ))))
`(font-lock-string-face ((t (:foreground ,color16 ))))
`(font-lock-type-face ((t (:foreground ,color17 ))))
`(font-lock-variable-name-face ((t (:foreground ,color18 ))))


;; linum-mode
`(linum ((t (:foreground ,color19 ))))
`(linum-relative-current-face ((t (:foreground ,color19 ))))


;; display-line-number-mode
`(line-number ((t (:foreground ,color19 ))))
`(line-number-current-line ((t (:foreground ,color19 ))))


;; THIRD PARTY PACKAGE FACES


;; doom-modeline-mode
`(doom-modeline-bar ((t (:background ,color8 :foreground ,color9 ))))
`(doom-modeline-inactive-bar ((t (:background ,color2 :foreground ,color7 ))))


;; web-mode
`(web-mode-string-face ((t (:foreground ,color16 ))))
`(web-mode-html-tag-face ((t (:foreground ,color13 ))))
`(web-mode-html-tag-bracket-face ((t (:foreground ,color13 ))))
`(web-mode-html-attr-name-face ((t (:foreground ,color17 ))))


;; company-mode
`(company-tooltip ((t (:background ,color20 :foreground ,color21 ))))


;; org-mode
`(org-block ((t (:background ,color22 :foreground ,color23 ))))))


(custom-theme-set-variables
  'carbon
  '(linum-format " %3i "))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))


;;;###autoload
(defun carbon-theme()
  "Apply the carbon-theme."
  (interactive)
  (load-theme 'carbon t))


(provide-theme 'carbon)


;; Local Variables:
;; no-byte-compile: t
;; End:


;; Generated using https://github.com/nice/themeforge
;; Feel free to remove the above URL and this line.
