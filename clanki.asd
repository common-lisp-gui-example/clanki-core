(defsystem "clanki"
  :description "A core of the Clanki app - a Common Lisp clone of the Anki, created to demonstrate different GUI frameworks."
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/clanki/"
  :source-control (:git "https://github.com/common-lisp-gui-example/clanki-core")
  :bug-tracker "https://github.com/common-lisp-gui-example/clanki-core/issues"
  :class :40ants-asdf-system
  :defsystem-depends-on ("40ants-asdf-system")
  :pathname "src"
  :depends-on ("clanki/core")
  :in-order-to ((test-op (test-op "clanki-tests"))))
