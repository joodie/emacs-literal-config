;;-*-coding: utf-8;-*-
(define-abbrev-table 'Buffer-menu-mode-abbrev-table '())

(define-abbrev-table 'bibtex-mode-abbrev-table '())

(define-abbrev-table 'calendar-mode-abbrev-table '())

(define-abbrev-table 'comint-mode-abbrev-table '())

(define-abbrev-table 'completion-list-mode-abbrev-table '())

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

(define-abbrev-table 'display-time-world-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-byte-code-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-mode-abbrev-table '())

(define-abbrev-table 'fundamental-mode-abbrev-table '())

(define-abbrev-table 'global-abbrev-table 
  '(
    ("heikkil" "Heikki Lehväslaiho" nil 2)
    ("sperl" "#!/usr/bin/env perl
use Modern::Perl;
use Data::Printer;
" nil 9)
    ("teh" "the" nil 3)
   ))

(define-abbrev-table 'help-mode-abbrev-table '())

(define-abbrev-table 'lisp-mode-abbrev-table '())

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
    ("ma" "am" nil 2)
    ("oabstract" "#+BEGIN_ABSTRACT

#+END_ABSTRACT
" nil 5)
    ("oarticle" "#+LATEX_CLASS: fu-org-article" nil 7)
    ("oauthor" "#+AUTHOR: Heikki Lehv\\auml{}slaiho" nil 3)
    ("obibio" "" skel-org-block-bibl 1)
    ("obiblio" "" skel-org-block-bibl 3)
    ("ocaption" "#+CAPTION: " nil 3)
    ("odate" "#+DATE:" nil 5)
    ("oindent" "#+STARTUP: indent" nil 4)
    ("olabel" "#+LABEL: fig:label" nil 6)
    ("olable" "#+LABEL: fig:label" nil 5)
    ("onotoc" "#+TOK: nil" nil 1)
    ("oscale" "#+ATTR_LaTeX: scale=0.75" nil 1)
    ("oshebang" "#+PROPERTY: :shebang \"#!/usr/bin/env perl\"" nil 1)
    ("osize" "#+ATTR_LaTeX: width=0.70\\textwidth" nil 1)
    ("otitle" "#+TITLE: " nil 5)
    ("otoc" "#+OPTIONS: toc:nil" nil 4)
    ("pblk" "" skel-org-block-perl 2)
    ("rblk" "" skel-org-block-r 1)
    ("sblk" "" skel-org-block 1)
    ("sditaa" "" skel-org-block-ditaa 0)
    ("sdot" "" skel-org-block-dot 0)
    ("selisp" "" skel-org-block-elisp 0)
    ("splant" "" skel-org-block-plantuml 0)
   ))

(define-abbrev-table 'outline-mode-abbrev-table '())

(define-abbrev-table 'package-menu-mode-abbrev-table '())

(define-abbrev-table 'process-menu-mode-abbrev-table '())

(define-abbrev-table 'prog-mode-abbrev-table '())

(define-abbrev-table 'ruby-compilation-mode-abbrev-table '())

(define-abbrev-table 'ruby-mode-abbrev-table '())

(define-abbrev-table 'shell-mode-abbrev-table '())

(define-abbrev-table 'special-mode-abbrev-table '())

(define-abbrev-table 'tabulated-list-mode-abbrev-table '())

(define-abbrev-table 'text-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-edit-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-view-mode-abbrev-table '())

