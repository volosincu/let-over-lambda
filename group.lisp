

(defun group (lst by)
  (let ((ll '())
	(buff '()))
    (labels ((rec (l)
	       (cond ((car l)
		      (if (eq (length buff) by)
			  (progn
			    (push buff ll)
			    (setq buff '())
			    (push (car l) buff))
			  (push (car l) buff))
		      (if (null (cdr l))
			  (progn
			    (push buff ll)
			    (print ll))
			  (rec (cdr l)))
		      ))))
      (rec lst))))


;(defun ggroup (lst by)
;  (let ((f (car lst)))
;	(if(null f)
;	   nil
;	   (progn (print f) (ggroup (cdr lst))))))
