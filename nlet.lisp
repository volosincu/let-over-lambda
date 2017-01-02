
(defvar *the-nth-fibonaci-nr* nil)

(defmacro nlet (n letargs &rest body)
  `(labels ((,n ,(mapcar #'car letargs )
	      ,@body))
     (,n ,@(mapcar #'cadr letargs))))


; function declaration is hidden in macro
(setq *the-nth-fibonaci-nr* 
      (nlet fib ((n 5))
	    (cond ((= n 0) 0)
		  ((= n 1) 1)
		  ((> n 1) (+ (fib (1- n)) (fib (- n 2) ))))))

(print *the-nth-fibonaci-nr*)


;(pprint (macroexpand-1
;	 '(nlet fib ((n 5))
;	    (cond ((= n 0) 0)
;		  ((= n 1) 1)
;		  ((> n 1) (+ (fib (1- n)) (fib (- n 2) ))) ))))
