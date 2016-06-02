
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'package-archives
	     '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)

(setq my/package-list
      '(adoc-mode
        aggressive-indent
	auctex
	auto-complete
	cider
	circe
	clj-refactor
	clojure-mode
	coffee-mode
	company
	csv-mode
	dash
        diminish
	exec-path-from-shell
	flycheck
	fringe-helper
	git
	git-gutter
	git-gutter-fringe
	graphviz-dot-mode
	haml-mode
	highlight-parentheses
        ;;	htmlize
	inf-ruby
        flycheck
	inflections
	js2-mode
	json-mode
	json-reformat
	less-css-mode
        ;;	leuven-theme
	magit
	makey
	markdown-mode
	multiple-cursors
	names
	neotree
        org
	paredit
        php-mode
	pkg-info
	popup
	powerline
        ;;	pretty-symbols
	projectile
        puml-mode
	rainbow-delimiters
	rainbow-mode
	rspec-mode
	ruby-compilation
	rvm
	s
        scss-mode
	sass-mode
	shut-up
	slamhound
	smart-mode-line
	smartparens
	smex
	tracking
	undo-tree
	nyan-mode
	writeroom-mode
	yaml-mode
	yasnippet
	))


;; fetch the list of packages available
(unless (file-exists-p package-user-dir)
  (package-refresh-contents))

;; install the missing packages
(dolist (package my/package-list)
  (unless (package-installed-p package)
    (message "Installing %s" package)
    (package-install package)))


(require 'org)
(when (string-match "^[1234567]" (org-version))
  (warn "Org-Mode is out of date. We expect org 8 or higher, but instead we have %s" (org-version)))

(org-babel-load-file "~/.emacs.d/emacs.org")

