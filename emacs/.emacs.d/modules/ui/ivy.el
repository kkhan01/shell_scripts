;;; ivy.el --- ivy
;;; Commentary:
;;; Code:

(require 'core-straight)

(package! ivy
  :bind
  ([switch-to-buffer] . ivy-switch-buffer)
  (:map ivy-minibuffer-map
        ([remap xref-find-definitions] . shan/do-nothing)
        ([remap xref-find-definitions-other-frame] . shan/do-nothing)
        ([remap xref-find-definitions-other-window] . shan/do-nothing)
        ([remap xref-find-references] . shan/do-nothing)
        ([remap xref-find-apropos] . shan/do-nothing)
        ("<return>" . ivy-alt-done)
        ("<S-return>" . ivy-immediate-done))
  :custom
  (ivy-use-virtual-buffers t)
  (ivy-count-format "%d/%d ")
  (ivy-height 20)
  (ivy-display-style 'fancy)
  (ivy-wrap t)
  (ivy-action-wrap t)
  (ivy-format-function 'ivy-format-function-line)
  (ivy-re-builders-alist
   '((t . ivy--regex-plus)))
  (ivy-initial-inputs-alist nil)
  :config
  (ivy-mode t))

(package! counsel
  :bind
  ("M-x" . counsel-M-x)
  ("C-x C-f" . counsel-find-file)
  ("C-h v" . counsel-describe-variable)
  ("C-h f" . counsel-describe-function)
  ("C-x b" . counsel-switch-buffer)
  :config
  (counsel-mode t)
  ;; weird because of a top-level push in source code
  (setq-default ivy-initial-inputs-alist nil))

(package! swiper
  :if (feature-p! +swiper)
  :bind
  ("C-s" . swiper-isearch)
  ("C-r" . swiper-isearch-backward))

(package! ivy-rich
  :custom
  (ivy-rich-parse-remote-buffer nil)
  :config
  (ivy-rich-mode t)
  (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line))

(provide 'ivy)
;;; ivy.el ends here