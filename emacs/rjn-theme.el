;;; rjn-theme.el --- Custom face theme for Emacs

;; Copyright (C) 2010 RJN.

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(deftheme rjn "A dark and mild theme.")
 ;'(cursor ((t (:background "#e3e3e3" :foreground "#2e2e2e"))))

(custom-theme-set-faces
 'rjn
 '(default ((t (:background "#2e2e2e" :foreground "#e3e3e3"))))
 '(cursor ((t (:inverse-video t))))
 '(highlight ((t (:background "#383838" :foreground "#e3e3e3"))))
 '(region ((t (:background "#eedc82" :foreground "#000000"))))
 '(mode-line ((t (:background "#d6d6d6" :foreground "#000000"))))
 '(mode-line-inactive ((t (:background "#a8a8a8" :foreground "#2e2e2e"))))
 '(fringe ((t (:background "#242424"))))
 '(minibuffer-prompt ((t (:foreground "#ffffff" :weight bold))))
 '(font-lock-builtin-face ((t (:foreground "#ffffff" :weight bold))))
 '(font-lock-comment-face ((t (:slant italic :foreground "#999999"))))
 '(font-lock-constant-face ((t (:foreground "#ff9800"))))
 '(font-lock-function-name-face ((t (:foreground "#0087d7" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "#ffffff" :weight bold))))
 '(font-lock-string-face ((t (:foreground "#fff68f"))))
 '(font-lock-type-face ((t (:foreground "#00d787"))))
 '(font-lock-variable-name-face ((t (:foreground "#e3e3e3"))))
 '(font-lock-warning-face ((t (:foreground "#cd5555"))))
 '(isearch ((t (:background "#fff68f" :foreground "#030303"))))
 '(lazy-highlight ((t (:background "#bdb66a" :foreground "#030303"))))
 '(link ((t (:foreground "#4169e1" :underline t))))
 '(link-visited ((t (:foreground "#483d8b" :underline t))))
 '(button ((t (:foreground "#ffffff" :underline t))))
 '(header-line ((t (:background "#e5e5e5" :foreground "#212121"))))
 '(match ((t (:background "#2e2e2e" :foreground "#e3e3e3" :weight bold)))))

(provide-theme 'rjn)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; rjn-theme.el  ends here
