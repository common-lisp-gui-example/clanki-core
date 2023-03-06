(defsystem "clanki-docs"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/clanki/"
  :class :package-inferred-system
  :description "Provides documentation for clanki."
  :source-control (:git "https://github.com/common-lisp-gui-example/clanki-core")
  :bug-tracker "https://github.com/common-lisp-gui-example/clanki-core/issues"
  :pathname "docs"
  :depends-on ("clanki"
               "clanki-docs/index"))
