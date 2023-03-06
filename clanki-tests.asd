(defsystem "clanki-tests"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/clanki/"
  :class :package-inferred-system
  :description "Provides tests for clanki."
  :source-control (:git "https://github.com/common-lisp-gui-example/clanki-core")
  :bug-tracker "https://github.com/common-lisp-gui-example/clanki-core/issues"
  :pathname "t"
  :depends-on ("clanki-tests/core")
  :perform (test-op :after (op c)
                    (symbol-call :rove :run c))  )
