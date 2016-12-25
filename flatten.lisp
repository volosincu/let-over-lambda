



(defun flatten (tree)
  (labels ((rec (xs acc)
	     (cond ((null xs) acc)
		   ((atom xs)
		    (cons xs acc))
		   (t (rec
		       (car xs)
		       (rec (cdr xs) acc))))))
    (rec tree nil)))
