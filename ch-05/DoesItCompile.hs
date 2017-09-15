-- For each set of expressions, figure out which expression, if any, causes the
-- compiler to squawk at you (n.b. we do not mean literal squawking) and why.
-- Fix it if you can.

-- 1. 
-- bigNum = (^) 5 $ 10
-- wahoo = bigNum $ 10
-- `wahoo` fails to compile because there is no operation expressed between 
-- `bigNum` and 10.  There are likely multiple ways to make the code compile.
-- One approach is:
-- (*) bigNum $ 10

-- 3.
-- x = print
-- y = print "woohoo!"
-- z = x "hello world"
-- It compiles.

-- 4.
-- a = (+)
-- b = 5
-- c = b 10
-- d = c 200
-- `c = b 10` fails to compile as will the final expression.  There is no
-- operation between `b` and 10.  A possible fix is:
-- c = b `a` 10
-- d = c `a` 200

-- 5.
-- a = 12 + b
-- b = 10000 * c
-- `a = 12 + b` fails to compile because `b` is not in scope.  The second
-- expression will also fail because `c` is not defined anywhere.
-- The intent of the operations is unclear, so I'm not sure how to suggest a
-- fix.  A trivial way to make the code compile is simple assignment (e.g.
-- `c = 0`).

