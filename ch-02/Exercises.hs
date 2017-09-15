-- 2.5.1 Given the following lines of code as they might appear in a source file, how
-- would you change them to use them directly in the REPL?
-- half x = x / 2
-- square x = x * x

-- let half x = x / 2
-- let square x = x * x

-- 2.5.2 Write one function that can accept one argument and work for all the 
-- following expressions. Be sure to name the function.
-- 3.14 * (5 * 5)
-- 3.14 * (10 * 10)
-- 3.14 * (2 * 2)
-- 3.14 * (4 * 4) 

areaOfCircle x = 3.14 * x ^ 2

-- 2.5.3 There is a value in Prelude called pi. Rewrite your function to use pi
-- instead of 3.14.

areaOfCircle x = pi * x ^ 2

-- 2.6 Below are some pairs of functions that are alike except for
-- parenthesization.  Read them carefully and decide if the parentheses change
-- the results of the function. Check your work in GHCi.
-- 2.6.1 a) 8 + 7 * 9
--       b) (8 + 7) * 9
-- Yes

-- 2.6.2 a) perimeter x y = (x * 2) + (y * 2)
--       b) perimeter x y = x * 2 + y * 2
-- No

-- 2.6.3 a) f x = x / 2 + 9
--       b) f x = x / (2 + 9)
-- Yes

-- 2.7 The following code samples are broken and won’t compile. The first two
-- are as you might enter into the REPL; the third is from a source file. Find
-- the mistakes and fix them so that they will.
-- 2.7.1 let area x = 3. 14 * (x * x)
-- Space after decimal place should be removed (i.e. 3.14).

-- 2.7.2 let double x = b * 2
-- 'b' is an undefined variable and appears to be a typo of 'x'.

-- 2.7.3 
-- x = 7
--  y = 10
-- f = x + y
-- The second line has an extra indent.

-- 2.10 Now, we’re going to open a file and rewrite some let expressions using
-- where declarations.
-- 2.10.1 let x = 3; y = 1000 in x * 3 + y
a = x * 3 + y
  where x = 3
        y = 1000

-- 2.10.2 let y = 10; x = 10 * 5 + y in x * 5
b = x * 5
  where y = 10
        x = 10 * 5 + y

-- 2.10.3 let x = 7; y = negate x; z = y * 10 in z / x + y
c = z / x + y
  where x = 7
        y = negate x
        z = y * 10

-- 2.11 Parenthesization - Given what we know about the precedence of (*),
-- (+), and (^), how can we parenthesize the following expressions more 
-- explicitly without changing their results?
-- 1. 2 + 2 * 3 - 1
-- (2 + (2 * 3)) - 1

-- 2. (^) 10 $ 1 + 1
-- (^) 10 $ (1 + 1)

-- 3. 2 ^ 2 * 4 ^ 5 + 1
-- ((2 ^ 2) * (4 ^ 5)) + 1

-- 2.11 Equivalent expressions - Which of the following pairs of expressions
-- will return the same result when evaluated?
-- 1. 1 + 1
--    2
-- Same

-- 2. 10 ^ 2
--    10 + 9 * 10
-- Same

-- 3. 400 - 37
--    (-) 37 400
-- Not the same because subtraction is left associative

-- 4. 100 `div` 3
--    100 / 3
-- Same

-- 5. 2 * 5 + 18
--    2 * (5 + 18)
-- Not the same because parenthesis change order of operations

-- 2.11 More fun with functions
-- 0. Given that, look at this code and rewrite it such that it could be
-- evaluated in the REPL (remember: you’ll need let when entering it directly
-- into the REPL). Be sure to enter your code into the REPL to make sure it
-- evaluates correctly.
-- z = 7
-- x = y ^ 2
-- waxOn = x * 5
-- y = z + 8

-- let z = 7
-- let y = z + 8
-- let x = y ^ 2
-- let waxOn = x * 5

-- Prelude> waxOn
-- 1125

-- 1. Now you have a value called waxOn in your REPL. What do you
-- think will happen if you enter:
-- 10 + waxOn
-- Should yield 1135

-- (+10) waxOn
-- Should yield 1135

-- (-) 15 waxOn
-- Should yield -1110

-- (-) waxOn 15
-- Should yield 1110

-- 2. Earlier we looked at a function called triple. While your REPL has waxOn
-- in session, re-enter the triple function at the prompt.
-- Prelude> let triple x = x * 3

-- 3. Now, what will happen if we enter this at our GHCi prompt. Try to reason
-- out what you think will happen first, considering what role waxOn is playing
-- in this function call. Then enter it, see what does happen, and check your
-- understanding:
-- triple waxOn
-- Should yield 1125 * 3 == 3375

-- 4. Rewrite waxOn as an expression with a where clause in your source file.
-- Load it into your REPL and make sure it still works as expected!
waxOn = x * 5
  where z = 7
        y = z + 8
        x = y ^ 2

-- 5. Now to the same source file where you have waxOn, add the triple 
-- function.
triple x = x * 3

-- 6. Now, without changing what you’ve done so far in that file, add a new
-- function called waxOff that looks like this:
-- waxOff x = triple x
waxOff x = triple x

-- 7. What is the result of waxOff 10 or waxOff (-50)? 
-- *Main> waxOff 10
--  30
-- *Main> waxOff (-50)
-- 150

