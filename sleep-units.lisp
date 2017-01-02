

(defun sleep-timer (val unit)
  (sleep
   (* val
      (case unit
	((s) 1)
	((m) 60)
	((h) 3600)
	((d) 86400)
	((ms) 1/1000)))))


(defmacro sleep-units (val unit)
    `(sleep
      (* ,val
	 ,(case unit
	    ((s) 1)
	    ((m) 60)
	    ((h) 3600)
	    ((d) 86400)
	    ((ms) 1/1000)))))



(let ((buzz 'buzz))
  (sleep-timer 1 's)
  (sleep-units 1 s)
  (print buzz))
