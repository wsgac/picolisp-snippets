# Caesar's cipher

(de encodeChar (C N)
   (cond
      ((<= "a" C "z")
       (let A (char "a")
         (char (+ A (% (+ 26 N (- (char C) A)) 26)))))
      ((<= "A" C "Z")
       (let A (char "A")
         (char (+ A (% (+ 26 N (- (char C) A)) 26)))))
      (T C)))

(de encode (S N)
   (pack (mapcar '((C) (encodeChar C N)) (chop S))))

(de decode (S N)
   (pack (mapcar '((C) (encodeChar C (- N))) (chop S))))

(setq LowercaseAlphabet (mapcar char (range (char "a") (char "z"))))

# Test encodeChar
(test "a" (encodeChar "a" 0))
(test "z" (encodeChar "z" 0))
(test "A" (encodeChar "A" 0))
(test "Z" (encodeChar "Z" 0))
