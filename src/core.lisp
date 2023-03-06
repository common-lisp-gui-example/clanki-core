(uiop:define-package #:clanki
  (:use #:cl)
  (:nicknames #:clanki/core)
  (:export #:hello
           #:make-hello
           #:say))
(in-package #:clanki)


(defclass hello ()
  ((name :initform :name
         :reader user-name))
  (:documentation "Example class."))


(defun make-hello (name)
  "Makes hello world example"
  (make-instance 'hello
                 :name name))


(defgeneric say (obj)
  (:documentation "Say what should be said.")
  (:method ((obj hello))
    (format nil "Hello, ~A!~%"
            (user-name obj))))
