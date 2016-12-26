

(defmacro nif (expr pos zero neg)
  `(let ((buggy ,expr))
     (cond ((plusp buggy) ,pos)
	   ((zerop buggy) ,zero)
	   (t ,neg))))


;correct 
(print
 (nif 2 'pos 'zero 'neg))


;buggy 
(let ((buggy 'a))
  (print (nif 2 buggy 'b 'c)))


(pprint
 (macroexpand-1
  '(let ((buggy 'a))
    (nif 2 buggy 'b 'c))))



