;;-*-coding: utf-8;-*-
(define-abbrev-table '2048-mode-abbrev-table '())

(define-abbrev-table 'Buffer-menu-mode-abbrev-table '())

(define-abbrev-table 'Custom-mode-abbrev-table '())

(define-abbrev-table 'Info-edit-mode-abbrev-table '())

(define-abbrev-table 'Man-mode-abbrev-table '())

(define-abbrev-table 'TeX-error-overview-mode-abbrev-table '())

(define-abbrev-table 'TeX-output-mode-abbrev-table '())

(define-abbrev-table 'apropos-mode-abbrev-table '())

(define-abbrev-table 'awk-mode-abbrev-table '())

(define-abbrev-table 'biblio-selection-mode-abbrev-table '())

(define-abbrev-table 'bibtex-mode-abbrev-table '())

(define-abbrev-table 'bookmark-bmenu-mode-abbrev-table '())

(define-abbrev-table 'bookmark-edit-annotation-mode-abbrev-table '())

(define-abbrev-table 'c++-mode-abbrev-table '())

(define-abbrev-table 'c-mode-abbrev-table '())

(define-abbrev-table 'calc-trail-mode-abbrev-table '())

(define-abbrev-table 'calendar-mode-abbrev-table '())

(define-abbrev-table 'cask-mode-abbrev-table '())

(define-abbrev-table 'change-log-mode-abbrev-table '())

(define-abbrev-table 'cider-browse-ns-mode-abbrev-table '())

(define-abbrev-table 'cider-connections-buffer-mode-abbrev-table '())

(define-abbrev-table 'cider-docview-mode-abbrev-table '())

(define-abbrev-table 'cider-inspector-mode-abbrev-table '())

(define-abbrev-table 'cider-repl-mode-abbrev-table '())

(define-abbrev-table 'cider-stacktrace-mode-abbrev-table '())

(define-abbrev-table 'cider-test-report-mode-abbrev-table '())

(define-abbrev-table 'clojure-mode-abbrev-table '())

(define-abbrev-table 'clojurec-mode-abbrev-table '())

(define-abbrev-table 'clojurescript-mode-abbrev-table '())

(define-abbrev-table 'clojurex-mode-abbrev-table '())

(define-abbrev-table 'comint-mode-abbrev-table '())

(define-abbrev-table 'completion-list-mode-abbrev-table '())

(define-abbrev-table 'conf-colon-mode-abbrev-table '())

(define-abbrev-table 'conf-javaprop-mode-abbrev-table '())

(define-abbrev-table 'conf-ppd-mode-abbrev-table '())

(define-abbrev-table 'conf-space-mode-abbrev-table '())

(define-abbrev-table 'conf-unix-mode-abbrev-table '())

(define-abbrev-table 'conf-windows-mode-abbrev-table '())

(define-abbrev-table 'conf-xdefaults-mode-abbrev-table '())

(define-abbrev-table 'cperl-mode-abbrev-table
  '(
    ("=head1" "=head1" cperl-electric-pod 0)
    ("=head2" "=head2" cperl-electric-pod 0)
    ("=over" "=over" cperl-electric-pod 0)
    ("=pod" "=pod" cperl-electric-pod 0)
    ("continue" "continue" cperl-electric-else 0)
    ("do" "do" cperl-electric-keyword 0)
    ("else" "else" cperl-electric-else 0)
    ("elsif" "elsif" cperl-electric-keyword 0)
    ("for" "for" cperl-electric-keyword 0)
    ("foreach" "foreach" cperl-electric-keyword 0)
    ("foreachmy" "foreachmy" cperl-electric-keyword 0)
    ("formy" "formy" cperl-electric-keyword 0)
    ("head1" "head1" cperl-electric-pod 0)
    ("head2" "head2" cperl-electric-pod 0)
    ("if" "if" cperl-electric-keyword 0)
    ("over" "over" cperl-electric-pod 0)
    ("pod" "pod" cperl-electric-pod 0)
    ("unless" "unless" cperl-electric-keyword 0)
    ("until" "until" cperl-electric-keyword 0)
    ("while" "while" cperl-electric-keyword 0)
   ))

(define-abbrev-table 'css-mode-abbrev-table '())

(define-abbrev-table 'data-debug-mode-abbrev-table '())

(define-abbrev-table 'debugger-mode-abbrev-table '())

(define-abbrev-table 'diary-fancy-display-mode-abbrev-table '())

(define-abbrev-table 'diary-mode-abbrev-table '())

(define-abbrev-table 'diff-mode-abbrev-table '())

(define-abbrev-table 'doctex-mode-abbrev-table '())

(define-abbrev-table 'edebug-eval-mode-abbrev-table '())

(define-abbrev-table 'edit-abbrevs-mode-abbrev-table '())

(define-abbrev-table 'elisp-byte-code-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-byte-code-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-mode-abbrev-table
  '(
    ("ef" "(defun my/ ()
\"\"
(interactive)
)" nil 4)
   ))

(define-abbrev-table 'epa-info-mode-abbrev-table '())

(define-abbrev-table 'epa-key-list-mode-abbrev-table '())

(define-abbrev-table 'epa-key-mode-abbrev-table '())

(define-abbrev-table 'eshell-mode-abbrev-table '())

(define-abbrev-table 'evil-command-window-mode-abbrev-table '())

(define-abbrev-table 'eww-bookmark-mode-abbrev-table '())

(define-abbrev-table 'eww-buffers-mode-abbrev-table '())

(define-abbrev-table 'eww-history-mode-abbrev-table '())

(define-abbrev-table 'eww-mode-abbrev-table '())

(define-abbrev-table 'extempore-mode-abbrev-table '())

(define-abbrev-table 'extempore-repl-mode-abbrev-table '())

(define-abbrev-table 'fish-mode-abbrev-table '())

(define-abbrev-table 'flycheck-error-list-mode-abbrev-table '())

(define-abbrev-table 'fundamental-mode-abbrev-table '())

(define-abbrev-table 'gfm-mode-abbrev-table '())

(define-abbrev-table 'git-commit-mode-abbrev-table '())

(define-abbrev-table 'git-rebase-mode-abbrev-table '())

(define-abbrev-table 'gitattributes-mode-abbrev-table '())

(define-abbrev-table 'gitconfig-mode-abbrev-table '())

(define-abbrev-table 'gitignore-mode-abbrev-table '())

(define-abbrev-table 'global-abbrev-table
  '(
    ("8ar" "→" nil 3)
    ("8eur" "€" nil 21)
    ("8pound" "£" nil 2)
    ("8zws" "​" nil 4)
    ("Flase" "False" nil 4)
    ("abiquity" "ambiguity" nil 0)
    ("absorbtion" "absorption" nil 0)
    ("adn" "and" nil 0)
    ("albait" "albeit" nil 0)
    ("anf" "and" nil 0)
    ("assosiation" "association" nil 0)
    ("availble" "available" nil 2)
    ("beacuse" "because" nil 0)
    ("behavious" "behaviors" nil 0)
    ("ccc" "°C" nil 11)
    ("centences" "sentences" nil 0)
    ("collaeque" "colleague" nil 0)
    ("colse" "close" nil 0)
    ("computationla" "computational" nil 0)
    ("consice" "concise" nil 1)
    ("consistant" "consistent" nil 0)
    ("daugher" "daughter" nil 0)
    ("ef" "(defun my/ ()
\"\"
(interactive)
)" nil 1)
    ("excamples" "examples" nil 0)
    ("explicite" "explicit" nil 0)
    ("explicitely" "explicitly" nil 1)
    ("flase" "false" nil 4)
    ("forthnight" "fortnight" nil 0)
    ("hayday" "heyday" nil 0)
    ("heikkil" "Heikki Lehväslaiho" nil 6)
    ("india" "India" nil 0)
    ("inlcuding" "including" nil 0)
    ("interective" "interactive" nil 0)
    ("latex" "LaTeX" nil 5)
    ("lauched" "launched" nil 0)
    ("legnht" "length" nil 1)
    ("legnth" "length" nil 1)
    ("legth" "length" nil 1)
    ("lenght" "length" nil 3)
    ("lenth" "length" nil 1)
    ("ma" "am" nil 4)
    ("mammalial" "mammalian" nil 0)
    ("matias" "Matias" nil 5)
    ("minna" "Minna" nil 19)
    ("negigable" "negligible" nil 0)
    ("oC" "°C" nil 0)
    ("occatinally" "occasionally" nil 0)
    ("otehr" "other" nil 3)
    ("precice" "precise" nil 0)
    ("provenanace" "provenance" nil 0)
    ("recepi" "recipe" nil 1)
    ("recepies" "recipes" nil 1)
    ("recepis" "recipes" nil 1)
    ("reciliant" "resilient" nil 0)
    ("reguire" "require" nil 1)
    ("revieled" "revealed" nil 0)
    ("rigourous" "rigorous" nil 0)
    ("scholary" "scholarly" nil 0)
    ("sentance" "sentence" nil 3)
    ("sparce" "sparse" nil 0)
    ("specialised" "specialized" nil 0)
    ("sperl" "#!/usr/bin/env perl
use Modern::Perl;
use Data::Printer;
" nil 13)
    ("strenghten" "strengthen" nil 0)
    ("taht" "that" nil 14)
    ("techinques" "techniques" nil 0)
    ("teh" "the" nil 17)
    ("tehm" "them" nil 0)
    ("wiht" "with" nil 1)
   ))

(define-abbrev-table 'gnus-group-mode-abbrev-table '())

(define-abbrev-table 'go-mode-abbrev-table '())

(define-abbrev-table 'godoc-mode-abbrev-table '())

(define-abbrev-table 'google-maps-static-mode-abbrev-table '())

(define-abbrev-table 'grep-mode-abbrev-table '())

(define-abbrev-table 'gscholar-bibtex-mode-abbrev-table '())

(define-abbrev-table 'helm-major-mode-abbrev-table '())

(define-abbrev-table 'help-mode-abbrev-table '())

(define-abbrev-table 'howdoi-mode-abbrev-table '())

(define-abbrev-table 'html-mode-abbrev-table '())

(define-abbrev-table 'ibuffer-mode-abbrev-table '())

(define-abbrev-table 'idl-mode-abbrev-table '())

(define-abbrev-table 'inferior-extempore-mode-abbrev-table '())

(define-abbrev-table 'inferior-python-mode-abbrev-table '())

(define-abbrev-table 'ivy-occur-grep-mode-abbrev-table '())

(define-abbrev-table 'ivy-occur-mode-abbrev-table '())

(define-abbrev-table 'java-mode-abbrev-table '())

(define-abbrev-table 'latex-mode-abbrev-table '())

(define-abbrev-table 'ledger-check-mode-abbrev-table '())

(define-abbrev-table 'ledger-mode-abbrev-table '())

(define-abbrev-table 'ledger-reconcile-mode-abbrev-table '())

(define-abbrev-table 'ledger-report-mode-abbrev-table '())

(define-abbrev-table 'lisp-mode-abbrev-table '())

(define-abbrev-table 'log-edit-mode-abbrev-table '())

(define-abbrev-table 'magit-branch-manager-mode-abbrev-table '())

(define-abbrev-table 'magit-cherry-mode-abbrev-table '())

(define-abbrev-table 'magit-commit-mode-abbrev-table '())

(define-abbrev-table 'magit-diff-mode-abbrev-table '())

(define-abbrev-table 'magit-log-mode-abbrev-table '())

(define-abbrev-table 'magit-log-select-mode-abbrev-table '())

(define-abbrev-table 'magit-merge-preview-mode-abbrev-table '())

(define-abbrev-table 'magit-mode-abbrev-table '())

(define-abbrev-table 'magit-popup-mode-abbrev-table '())

(define-abbrev-table 'magit-process-mode-abbrev-table '())

(define-abbrev-table 'magit-reflog-mode-abbrev-table '())

(define-abbrev-table 'magit-refs-mode-abbrev-table '())

(define-abbrev-table 'magit-repolist-mode-abbrev-table '())

(define-abbrev-table 'magit-revision-mode-abbrev-table '())

(define-abbrev-table 'magit-stash-mode-abbrev-table '())

(define-abbrev-table 'magit-stashes-mode-abbrev-table '())

(define-abbrev-table 'magit-status-mode-abbrev-table '())

(define-abbrev-table 'magit-wazzup-mode-abbrev-table '())

(define-abbrev-table 'markdown-mode-abbrev-table '())

(define-abbrev-table 'message-mode-abbrev-table '())

(define-abbrev-table 'messages-buffer-mode-abbrev-table '())

(define-abbrev-table 'neotree-mode-abbrev-table '())

(define-abbrev-table 'nrepl-connections-buffer-mode-abbrev-table '())

(define-abbrev-table 'nrepl-messages-mode-abbrev-table '())

(define-abbrev-table 'objc-mode-abbrev-table '())

(define-abbrev-table 'occur-edit-mode-abbrev-table '())

(define-abbrev-table 'occur-mode-abbrev-table '())

(define-abbrev-table 'org-export-stack-mode-abbrev-table '())

(define-abbrev-table 'org-mode-abbrev-table
  '(
    ("lblk" "" skel-org-block-elisp 0)
    ("legnht" "length" nil 1)
    ("legnth" "length" nil 1)
    ("legth" "length" nil 1)
    ("lenght" "length" nil 1)
    ("lenth" "length" nil 1)
    ("ma" "am" nil 6)
    ("oabstract" "#+BEGIN_ABSTRACT

#+END_ABSTRACT
" nil 5)
    ("oarticle" "#+LATEX_CLASS: fu-org-article" nil 10)
    ("oauthor" "#+AUTHOR: Heikki Lehväslaiho" nil 7)
    ("obibio" "" skel-org-block-bibl 1)
    ("obiblio" "" skel-org-block-bibl 0)
    ("ocaption" "#+CAPTION: " nil 7)
    ("odate" "#+DATE:" nil 5)
    ("ofinnish" "#+LaTeX_HEADER: \\usepackage[finnish]{babel}" nil 9)
    ("ohyph" "#+LaTeX_HEADER: \\usepackage[none]{hyphenat}" nil 11)
    ("oindent" "#+STARTUP: indent" nil 4)
    ("olabel" "#+LABEL: fig:label" nil 6)
    ("olable" "#+LABEL: fig:label" nil 7)
    ("oname" "#+NAME:" nil 6)
    ("onotoc" "#+TOK: nil" nil 1)
    ("oref" "/ref{fig:label}" nil 8)
    ("oscale" "#+ATTR_LaTeX: scale=0.75" nil 1)
    ("oshebang" "#+PROPERTY: :shebang \"#!/usr/bin/env perl\"" nil 1)
    ("osize" "#+ATTR_LaTeX: width=0.70\\textwidth" nil 1)
    ("otitle" "#+TITLE: " nil 13)
    ("otname" "#+TBLNAME:" nil 6)
    ("otoc" "#+OPTIONS: toc:nil num:nil" nil 10)
    ("otufte" "#+LATEX_CLASS: tufte-handout" nil 10)
    ("pblk" "" skel-org-block-perl 0)
    ("rblk" "" skel-org-block-r 0)
    ("sblk" "" skel-org-block-source 0)
    ("sditaa" "" skel-org-block-ditaa 0)
    ("sdot" "" skel-org-block-dot 0)
    ("selisp" "" skel-org-block-elisp 0)
    ("splant" "" skel-org-block-plantuml 0)
   ))

(define-abbrev-table 'outline-mode-abbrev-table '())

(define-abbrev-table 'package-menu-mode-abbrev-table '())

(define-abbrev-table 'pandoc-@-mode-abbrev-table '())

(define-abbrev-table 'paradox-commit-list-mode-abbrev-table '())

(define-abbrev-table 'paradox-menu-mode-abbrev-table '())

(define-abbrev-table 'pdf-annot-list-mode-abbrev-table '())

(define-abbrev-table 'pdf-occur-buffer-mode-abbrev-table '())

(define-abbrev-table 'pdf-outline-buffer-mode-abbrev-table '())

(define-abbrev-table 'perl-mode-abbrev-table '())

(define-abbrev-table 'perl6-mode-abbrev-table '())

(define-abbrev-table 'pike-mode-abbrev-table '())

(define-abbrev-table 'plain-tex-mode-abbrev-table '())

(define-abbrev-table 'process-menu-mode-abbrev-table '())

(define-abbrev-table 'prog-mode-abbrev-table '())

(define-abbrev-table 'quickrun/mode-abbrev-table '())

(define-abbrev-table 'reb-lisp-mode-abbrev-table '())

(define-abbrev-table 'reb-mode-abbrev-table '())

(define-abbrev-table 'scss-mode-abbrev-table '())

(define-abbrev-table 'select-tags-table-mode-abbrev-table '())

(define-abbrev-table 'sgml-mode-abbrev-table '())

(define-abbrev-table 'sh-mode-abbrev-table '())

(define-abbrev-table 'shell-mode-abbrev-table '())

(define-abbrev-table 'slitex-mode-abbrev-table '())

(define-abbrev-table 'snippet-mode-abbrev-table '())

(define-abbrev-table 'special-mode-abbrev-table '())

(define-abbrev-table 'speedbar-mode-abbrev-table '())

(define-abbrev-table 'sql-mode-abbrev-table '())

(define-abbrev-table 'suggest-mode-abbrev-table '())

(define-abbrev-table 'tablist-mode-abbrev-table '())

(define-abbrev-table 'tabulated-list-mode-abbrev-table '())

(define-abbrev-table 'tar-mode-abbrev-table '())

(define-abbrev-table 'tex-mode-abbrev-table '())

(define-abbrev-table 'tex-shell-abbrev-table '())

(define-abbrev-table 'text-mode-abbrev-table '())

(define-abbrev-table 'url-cookie-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-edit-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-git-region-history-mode-abbrev-table '())

(define-abbrev-table 'xkcd-mode-abbrev-table '())

(define-abbrev-table 'xref--xref-buffer-mode-abbrev-table '())

