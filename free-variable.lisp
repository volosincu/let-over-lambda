(defparameter y 0)
(defparameter z 0)


(defun freevars ()
  (+ y z))


;list of lambdas with z bound to diff values
(defun contexts ()
  (list
   (lambda (fn)
     (let((z 100))
       (funcall fn))) 
   (lambda (fn)
     (let((z 1000))
       (funcall fn)))
   (lambda (fn)
     (let((z 10000))
       (funcall fn)))
   ))


;call freevars in diffent contexts
(defun bind-in-diff-ctx (fn)
  (let ((ctxs (contexts)))
    (dolist (cx ctxs)
      (print (funcall cx fn)))
    ))


(bind-in-diff-ctx #'freevars)
