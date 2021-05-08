;;; zoom.el --- -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'core-straight)

(package! default-text-scale
  :init
  (default-text-scale-mode))

(package! zoom-window
  :bind
  ("C-z" . zoom-window-zoom)
  :config
  (setq zoom-window-mode-line-color "#412170"))

(provide 'zoom)
;;; zoom.el ends here