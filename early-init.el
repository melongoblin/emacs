;; early-init.el --- -*- lexical-binding: t; -*-

(setq gc-cons-threshold (* 128 1000 1000))
(setq package-native-compile t)

;; Disable extra interface before it gets initialized
(menu-bar-mode -1)
(unless (and (display-graphic-p) (eq system-type 'darwin))
  (push '(menu-bar-lines . 0) default-frame-alist))
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

(setq-default frame-title-format '("%b - Emacs"))

(defalias 'yes-or-no-p 'y-or-n-p)
(setq use-short-answers t)
