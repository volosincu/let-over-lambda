
(defun lol ()
  (let ((y 0))
    (lambda (x)
      (print y)
      (incf y x))))


(defun lols ()
  (let ((y 0))
    (values
     (lambda () (incf y 10))
     (lambda () (incf y 100))
     (lambda () y)))) ;get


(multiple-value-bind
      (decimal cental get) (lols)
  (funcall decimal)
  (funcall cental)
  (let
      ((y nil))
    (setq y (funcall get))
    (print y)))


