(defun cant (l)
(if (null l) 0
(+ 1 (cant (rest l)))))

(defun nrosimpares (l)
(cond 
    ((null l) 0)
    ((not (= (mod (first l) 2) 0)) (+ 1 (nrosimpares (rest l))))
    (T (nrosimpares (rest l)))
))

(defun porcentaje_impares (l)
(if (= (nrosimpares l) 0) 0
(/ (* (nrosimpares l) 100) (cant l))))









