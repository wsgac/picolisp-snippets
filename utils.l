(de symbolToFlag (S)
   (let (offset (hex "1f1a5")
         chars (chop (uppc s)))
      (pack (char (+ offset (char (car chars))))
            (char (+ offset (char (cadr chars)))))))

# Factorial
(de factorial (N)
   (when (ge0 N)
      (recur (N)
         (if (=0 N)
         1
         (* N (recurse (dec N)))))))

(test 1 (factorial 0))
(test 1 (factorial 1))
(test 2 (factorial 2))
(test 3628800 (factorial 10))
# Edge cases
(test NIL (factorial -1))
