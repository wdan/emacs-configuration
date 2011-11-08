;; Inferior Ruby mode
(add-to-list 'load-path (expand-file-name "~/emacs/langmode/ruby/ruby"))
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
      '(lambda ()
         (inf-ruby-keys)
))


;; Emacs-rails
(add-to-list 'load-path (expand-file-name "~/emacs/langmode/ruby/emacs-rails"))
(require 'rails)
(setq rails-enable-ruby-electric nil)

;; RHTML-mode
(add-to-list 'load-path (expand-file-name "~/emacs/langmode/ruby/rhtml"))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . rhtml-mode))
(add-to-list 'auto-mode-alist '("\\.rjs\\'" . rhtml-mode))
(require 'rhtml-mode)

(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))

(autoload 'yaml-mode "yaml-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

(defadvice flymake-start-syntax-check-process (after
                                               cheeso-advice-flymake-start-syntax-check-1
                                               (cmd args dir)
                                               activate compile)
  ;; set flag to allow exit without query on any
  ;;active flymake processes
  (set-process-query-on-exit-flag ad-return-value nil))

;; scss-mode
(add-to-list 'load-path (expand-file-name "~/emacs/langmode/ruby"))
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(setq scss-compile-at-save nil)

;; coffee-mode
(require 'coffee-mode)
