(asdf:defsystem #:macro-level

  :author "Jean-Philippe Paradis <hexstream@hexstreamsoft.com>"

  :license "Unlicense"

  :description "An embarassingly trivial convenience macro that saves on indentation while being more concise and direct. (macro-level ...) == (macrolet ((m () ...)) (m))"

  :depends-on ()

  :version "1.1"
  :serial cl:t
  :components ((:file "package")
	       (:file "main"))

  :in-order-to ((asdf:test-op (asdf:test-op #:macro-level_tests))))
