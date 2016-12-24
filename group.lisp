

(defun group (lst by)
  (let ((ll '())
	(buff '()))
    (labels ((rec (l)
	       (let ((head (car l))
		     (tail (cdr l)))
		 (cond (head
			(if (eq (length buff) by)
			    (progn
			      (push buff ll)
			      (setq buff '())
			      (push head buff))
			    (push head buff))
			(if (null tail)
			    (push buff ll)
			    (rec tail))
			)))))
      (rec lst))
    ll))


;(defun ggroup (lst by)
;  (let ((f (car lst)))
;	(if(null f)
;	   nil
;	   (progn (print f) (ggroup (cdr lst))))))
