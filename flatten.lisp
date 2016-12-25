



(defun flatten (tree)
  (let ((flatlist '() )) 
    (labels ((rec (subtree)
	       (if (not (null subtree))
		   (if (atom (car subtree))
		       (progn (print (car subtree))
			      (push (car subtree) flatlist )
			      (rec (cdr subtree)))
		       (progn
			 (rec (car subtree))
			 (rec (cdr subtree)))))))
      (rec tree))
    (reverse flatlist)))
