

;; reqular unquote

(let ((s 'hello))
  `(,s world))

;; insert lists in the cdr position of a list created from a backquote template

(let ((s '(b c d)))
  `(a .,s))

;; splicing unquote

(let ((s '(b c d)))
  `(a ,@s e))

;; distructive splicing unquote

(let ((s '(b c d)))
  `(a ,.s e))

