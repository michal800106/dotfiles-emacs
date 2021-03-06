;; Configure package.el to include MELPA.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Ensure that use-package is installed.
;;
;; If use-package isn't already installed, it's extremely likely that this is a
;; fresh installation! So we'll want to update the package repository and
;; install use-package before loading the literate configuration.
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file "~/.emacs.d/configuration.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(comint-history-isearch 'dwim)
 '(edebug-print-length nil)
 '(ejc-result-table-impl 'ejc-result-mode)
 '(ejc-ring-length 100)
 '(ejc-use-flx t)
 '(elpy-rpc-ignored-buffer-size 1024000)
 '(elpy-rpc-python-command "python3.7")
 '(eshell-buffer-maximum-lines 10000)
 '(exec-path
   '("/home/michalz/.local/bin" "~/.gem/ruby/2.5.3/bin" "~/.cabal/bin" "/home/michalz/go/bin" "/usr/local/go/bin/" "/usr/local/bin" "/usr/bin" "/bin" "/usr/local/games" "/usr/games" "/home/michalz/emacs/libexec/emacs/27.0.50/x86_64-pc-linux-gnu" "/sbin" "/usr/sbin"))
 '(flycheck-rust-cargo-executable "/home/michalz/.cargo/bin/cargo")
 '(flycheck-rust-executable "/home/michalz/.cargo/bin/rustc")
 '(global-wakatime-mode t)
 '(history-delete-duplicates t)
 '(history-length 1000)
 '(ivy-height 16)
 '(kubernetes-poll-frequency 3600)
 '(kubernetes-redraw-frequency 3600)
 '(lsp-pyls-plugins-flake8-max-line-length 120)
 '(lsp-pyls-plugins-jedi-environment /home/michalz/tmp/pyls)
 '(lsp-pyls-plugins-pycodestyle-max-line-length 120)
 '(lsp-pyls-server-command '("/home/michalz/tmp/pyls/bin/pyls"))
 '(lsp-ui-sideline-ignore-duplicate t)
 '(lsp-ui-sideline-show-hover t)
 '(ovpn-mode-base-directory "/home/michalz/Downloads/openvpn_zielonka/")
 '(ovpn-mode-ipv6-auto-toggle t)
 '(package-selected-packages
   '(aweshell posframe pdb-capf pytest-pdb-break counsel-tramp kubernetes-tramp tramp quelpa auto-virtualenvwrapper urlenc xclip nubox clipetty soundklaus comint-intercept shx gitlab sane-term eyebrowse ssh-tunnels symon fish-completion fish-mode jdecomp wakatime-mode flx-ido imakado tern-auto-complete edbi ejc-sql simpleclip lua-mode ace-link git-link link link-hint org-jira docker docker-api docker-cli docker-compose-mode docker-tramp dockerfile-mode ovpn-mode slack restclient sqlformat emacsql-psql browse-at-remote github-search magit-gh-pulls magithub github-explorer kubernetes-helm kubernetes company-racer racer go-dlv go-eldoc go-scratch string-inflection isortify jq-format json-reformat tabbar dired-subtree ls-lisp yard-mode wgrep smex slim-mode scss-mode ruby-end python-mode py-autopep8 instapaper haml-mode go-errcheck evil-surround evil-org evil-mu4e evil-magit elfeed-org dired-open dired-hide-dotfiles deft company-jedi company-go company-coq coffee-mode chruby bbdb ag))
 '(racer-rust-src-path
   "/home/michalz/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src")
 '(request-log-level 'info)
 '(request-message-level 'info)
 '(rust-cargo-bin "/home/michalz/.cargo/bin/cargo")
 '(rust-format-on-save t)
 '(rust-rustfmt-bin "/home/michalz/.cargo/bin/rustfmt")
 '(rustic-cargo-bin "/home/michalz/.cargo/bin/cargo")
 '(safe-local-variable-values
   '((eval activate-venv-and-reload)
     (eval auto-virtualenv-set-virtualenv)
     (pyvenv-activate . "/home/michalz/projects/sportsbook/backoffice/offer_process/.tox/py37")
     (pyvenv-activate . "/home/michalz/projects/sportsbook/backoffice/feed/.tox/py37")
     (eval activate-venv-current-project)
     (isortify-mode)
     (blacken-mode)))
 '(savehist-mode t)
 '(slack-prefer-current-team t t)
 '(sql-postgres-login-params
   '((user :default "michalz")
     (database :default "michalz" :completion
               #[771 "\211\242\302=\206
 \211\303=?\2053 r\301\204 p\202( \304 \305!\203% \306!\202& p\262q\210\307\300!$)\207"
                     [#[257 "\300 \207"
                            [sql-postgres-list-databases]
                            2 "

(fn _)"]
                      nil boundaries metadata minibuffer-selected-window window-live-p window-buffer complete-with-action]
                     8 "

(fn STRING PRED ACTION)"]
               :must-match confirm)
     server port))
 '(sqlformat-c:ommand 'pgformatter)
 '(ssh-tunnels-configurations
   '((:name "ts_st" :local-port 5434 :remote-port 5432 :login "michalz@10.92.32.89")
     (:name "es_st" :local-port 9201 :remote-port 9200 :login "michalz@10.92.32.224")
     (:name "es_logs_st" :local-port 9202 :remote-port 9200 :login "michalz@10.92.32.3")
     (:name "pf_off_mgr" :local-port 5435 :remote-port 5432 :login "michalz@10.92.32.111")))
 '(transient-history-limit 1000)
 '(undo-limit 8000000000)
 '(undo-strong-limit 12000000000)
 '(wakatime-api-key "59ea844a-b286-43c8-8499-61907737f511")
 '(wakatime-cli-path "/home/michalz/tmp/ansible/bin/wakatime")
 '(wakatime-python-bin nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(lsp-ui-sideline-symbol ((t (:foreground "color-44" :box (:line-width -1 :color "color-80") :height 0.99))))
 '(markdown-code-face ((t nil))))
