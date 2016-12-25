

(defun group (lst by)
  (if (<= by 0) (error "can't group by 0 or negative number"))
  (labels ((rec (xs)
	     (if (not (null xs))
		 (if (>= (length xs) by)
		     (cons (subseq xs 0 by) (rec (nthcdr by xs))) 
		     (cons xs nil) )
		 )))
    (rec lst)))

