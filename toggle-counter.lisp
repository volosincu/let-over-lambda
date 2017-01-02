

(let ((direction 'up))
  (defun toggle-counters-direction ()
    (if (eq direction 'up)
	(setq direction 'down)
	(setq direction 'up)))


  (defun counter-class ()
    (let ((counter 0))
      (values
       (lambda ()
	 (if (eq direction 'up)
	     (incf counter)
	     (decf counter)))
       (lambda ()
	 counter)))
    ))




(multiple-value-bind
      (count get) (counter-class)

  (dolist (i '(1 2 3 4 5 6 7 8))
    (funcall count))

  (toggle-counters-direction)

  (dolist (i '(1 2))
    (funcall count))

  (print (funcall get)))





