
(defun g!-symbol-p (symb)
  (if (and
       (symbolp symb)
       (> (length (symbol-name symb)) 2)
       (string=
	symb "G!"
	:start1 0 :end1 2))
      symb))


(defmacro defmacro/g! (name args &rest body)
  
  (let ((placeholders
	 (remove-duplicates
	  (labels
	      ((rec (xs)
		 (if (car xs)
		     (cons (car xs) (rec (cdr xs)))
		     (if (cdr xs)
			 (rec (cdr xs))))))
	    (rec
	     (mapcar #'g!-symbol-p
		     (flatten body)))))))
    
    `(defmacro ,name ,args 
       (let
	   ,(mapcar
	     (lambda (s)
	       (if (not (null s))
		   `(,s (gensym))
		   `(a 0)))
	     placeholders)
	 ,@body))))



(pprint
 (macroexpand-1
  '(defmacro/g! kuha ()
    `(let ((,g!times 1))
       (dotimes (index ,g!times)
	 (print index))
       (print "haha")))))

(defmacro/g! kuha ()
  `(let ((,g!times 1))
     (dotimes (index ,g!times)
       (print index))
     (print "haha")))


(print
 (remove-duplicates
  (labels
      ((rec (xs)
	 (if (car xs)
	     (cons (car xs) (rec (cdr xs))))))
    (rec
     (mapcar
      (lambda (v)
	(if (numberp v)
	    'a))
      '(8 1 5 4 nil 3 nil)))
    )
  ))




