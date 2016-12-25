



(defun flatten (tree)
    (labels ((rec (xs acc)
	       (if (not (null xs))
		   (if (atom xs)
		       (cons xs acc)
		       (rec (car xs)
			    (rec (cdr xs) acc))))))
      (rec tree nil)))
