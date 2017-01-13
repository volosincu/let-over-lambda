
(defparameter UNIX "linux")

;;(print *load-truename*)
;;(print *load-pathname*)

;;(print (machine-instance))
;;(print (machine-type))
;;(print (machine-version))
;;(print (software-type))
;;(print (software-version))
;;(print (user-homedir-pathname))


;; macro that decides at read time what functionality
;; implements depending on the operating system

(defmacro system-dependent-macro ( &body body)
    `(let ((type
	   #.(if (string-equal
		  "gcc" (software-type)
		  :start2 0
		  :end2 3)
		 "linux"
		 "windows")))
      (if (string-equal UNIX type)
	  (let ((home
		  #.(user-homedir-pathname)))
	    ,@body)
	  (print "on windows blue screen error"))))


(print (macroexpand
	'(system-dependent-macro 
	  (print "load system dependent modules"))))


(system-dependent-macro
 (progn
   (print home)
   (print "load system dependent modules")))

