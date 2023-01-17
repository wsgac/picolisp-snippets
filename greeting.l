#!/usr/bin/picolisp /usr/lib/picolisp/lib.l

(prinl "Hi. What's your name?")
(setq Name (in NIL (line)))
(prinl "Hello, " Name "!")
(bye)
