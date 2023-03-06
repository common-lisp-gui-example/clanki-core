(uiop:define-package #:clanki-docs/index
  (:use #:cl)
  (:import-from #:pythonic-string-reader
                #:pythonic-string-syntax)
  #+quicklisp
  (:import-from #:quicklisp)
  (:import-from #:named-readtables
                #:in-readtable)
  (:import-from #:40ants-doc
                #:defsection
                #:defsection-copy)
  (:import-from #:clanki-docs/changelog
                #:@changelog)
  (:import-from #:docs-config
                #:docs-config)
  (:export #:@index
           #:@readme
           #:@changelog))
(in-package #:clanki-docs/index)

(in-readtable pythonic-string-syntax)


(defmethod docs-config ((system (eql (asdf:find-system "clanki-docs"))))
  ;; 40ANTS-DOC-THEME-40ANTS system will bring
  ;; as dependency a full 40ANTS-DOC but we don't want
  ;; unnecessary dependencies here:
  #+quicklisp
  (ql:quickload "40ants-doc-theme-40ants")
  #-quicklisp
  (asdf:load-system "40ants-doc-theme-40ants")
  
  (list :theme
        (find-symbol "40ANTS-THEME"
                     (find-package "40ANTS-DOC-THEME-40ANTS")))
  )


(defsection @index (:title "clanki - A core of the Clanki app - a Common Lisp clone of the Anki, created to demonstrate different GUI frameworks."
                    :ignore-words ("JSON"
                                   "HTTP"
                                   "TODO"
                                   "GUI"
                                   "Unlicense"
                                   "REPL"
                                   "GIT"))
  (clanki system)
  "
[![](https://github-actions.40ants.com/common-lisp-gui-example/clanki-core/matrix.svg?only=ci.run-tests)](https://github.com/common-lisp-gui-example/clanki-core/actions)

![Quicklisp](http://quickdocs.org/badge/clanki.svg)
"
  (@installation section)
  (@usage section))


(defsection-copy @readme @index)


(defsection @installation (:title "Installation")
  """
You can install this library from Quicklisp, but you want to receive updates quickly, then install it from Ultralisp.org:

```
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload :clanki)
```
""")


(defsection @usage (:title "Usage"
                    :ignore-words ("ASDF:PACKAGE-INFERRED-SYSTEM"
                                   "ASDF"
                                   "40A"))
  "
TODO: Write a library description. Put some examples here.
")
