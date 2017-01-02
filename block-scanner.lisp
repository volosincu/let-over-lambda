(defun scanner (search)
  (lambda (data)

    (let* ((look (coerce search 'list))
	    (raw (coerce data 'list))
	    (buff look))
	(dolist (c raw)
	  (if buff
	      (if (eq (car buff) c)
		  (setq buff (cdr buff))
		  (setq buff look))
	      ))
	(let ((found (not buff)))
	  (print (list 'found look found))
	  found)
	)))


(defvar *scan-args* (scanner "ja"))


(funcall *scan-args* "jamaica")
(funcall *scan-args* "injamaica")
(funcall *scan-args* "cuba")
(funcall *scan-args* "japan")
(funcall *scan-args* "jordan")
