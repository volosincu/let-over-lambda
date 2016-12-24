

(defun group (lst by)
  (let ((tuple '()))
  (labels ((rec (xs)
	     (if (not (null xs))
		 (if (>= (length xs) by)
		     (progn
		       (push (subseq xs 0 by) tuple)
		       (rec (subseq xs by)))
		     (push xs tuple)))
	     ))	       
    (rec lst))
  (reverse tuple)))
