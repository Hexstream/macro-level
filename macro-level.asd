(asdf:defsystem #:macro-level

  :author "Jean-Philippe Paradis <hexstream@gmail.com>"

  ;; See the UNLICENSE file for details.
  :license "Public Domain"

  :description "MACRO-LEVEL is an embarassingly trivial convenience macro that saves on indentation while being more concise and direct. (macro-level ...) == (macrolet ((m () ...)) (m))"

  :depends-on ()

  :version "1.0.1"
  :serial cl:t
  :components ((:file "package")
	       (:file "main")))
