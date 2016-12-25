



(defun flatten (tree)
  (if (not (null tree))
      (if (atom (car tree))
	    (progn (print (car tree)) (flatten (cdr tree)))
	    (progn
	      (flatten (car tree))
	      (flatten (cdr tree))))))



