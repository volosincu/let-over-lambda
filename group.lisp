

(defun group (lst by)
  (labels ((rec (xs)
	     (if (not (null xs))
		 (if (>= (length xs) by)
		     (cons (subseq xs 0 by) (rec (nthcdr by xs))) 
		     (cons xs nil) )
		 )))
    (rec lst)))

