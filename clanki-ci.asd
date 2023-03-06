(defsystem "clanki-ci"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/clanki/"
  :class :package-inferred-system
  :description "Provides CI settings for clanki."
  :source-control (:git "https://github.com/common-lisp-gui-example/clanki-core")
  :bug-tracker "https://github.com/common-lisp-gui-example/clanki-core/issues"
  :pathname "src"
  :depends-on ("clanki-ci/ci"))
