(cl:defpackage #:macro-level_tests
  (:use #:cl #:parachute)
  (:import-from #:macro-level #:macro-level))

(cl:in-package #:macro-level_tests)

(define-test "main"
  (is equal '((*a* . 1) (*b* . 2) (*c* . 3))
      (let ((alist nil))
        (macro-level `(progn ,@(mapcar (lambda (var value)
                                         (let ((var (intern (format nil "*~A*" var) '#:macro-level_tests)))
                                           `(push '(,var . ,value) alist)))
                                       '(a b c)
                                       '(1 2 3))))
        (nreverse alist))))
