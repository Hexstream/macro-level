(in-package #:macro-level)

(defmacro macro-level (&body body)
  (let ((macro (gensym (string '#:macro))))
    `(macrolet ((,macro () ,@body))
       (,macro))))
