-- 3.4.1 These lines of code are from a REPL session. Is 𝑦 in scope for 𝑧?
-- Prelude> let x = 5
-- Prelude> let y = 7
-- Prelude> let z = x * y
-- Yes

-- 3.4.2 These lines of code are from a REPL session. Is ℎ in scope for 
-- function 𝑔? Go with your gut here.
-- Prelude> let f = 3
-- Prelude> let g = 6 * f + h
-- No

-- 3.4.3 This code sample is from a source file. Is everything we need to
-- execute area in scope?
-- area d = pi * (r * r)
-- r = d / 2
-- Yes

-- 3.4.4 This code is also from a source file. Now are 𝑟 and 𝑑 in scope for
-- area?
-- area d = pi * (r * r)
--   where r = d / 2
-- No

-- 3.5 Read the syntax of the following functions and decide whether it will 
-- compile.
-- 3.5.1 ++ [1, 2, 3] [4, 5, 6]
-- No, missing parenthesis around ++

-- 3.5.2  '<3' ++ ' Haskell'
-- No, need to double quote strings (e.g. "<3")

-- 3.5.3 concat ["<3", " Haskell"]
-- Yes

-- 3.8 Reading syntax
-- 3.8.1
-- a) concat [[1, 2, 3], [4, 5, 6]]
-- Correct syntax

-- b) ++ [1, 2, 3] [4, 5, 6]
-- Incorrect syntax - ++ requires parenthesis

-- c) (++) "hello" " world"
-- Correct syntax

-- d) ["hello" ++ " world]
-- Incorrect syntax - missing end quote on world

-- e) 4 !! "hello"
-- Incorrect syntax - second argument must be integer

-- f) (!!) "hello" 4
-- Correct syntax

-- g) take "4 lovely"
-- Incorrect syntax - 4 should not be a separate argument

-- h) take 3 "awesome"
-- Correct syntax

-- 3.8.2 Read the code and figure out which results came from which lines of
-- code.
-- a) concat [[1 * 6], [2 * 6], [3 * 6]] -> d) [6,12,18]
-- b) "rain" ++ drop 2 "elbow" -> c) "rainbow"
-- c) 10 * head [1, 2, 3] -> e) 10
-- d) (take 3 "Julie") ++ (tail "yes") -> a) "Jules"
-- e) concat [tail [1, 2, 3],
--            tail [4, 5, 6],
--            tail [7, 8, 9]] -> b) [2,3,5,6,8,9]
 

-- 3.8 Building functions
-- 3.8.1 
-- a) 
-- Given
-- "Curry is awesome"
-- Return
-- "Curry is awesome!"
-- "Curry is awesome" ++ "!"

-- b)
-- Given
--"Curry is awesome!"
-- Return
-- "y"
-- "Curry is awesome!" !! 4

-- c) 
-- Given
-- "Curry is awesome!"
-- Return
-- "awesome!"
-- drop 9 "Curry is awesome!"

-- 3.8.2 Now take each of the above and rewrite it in a source file as a
-- general function that could take different string inputs as arguments
-- but retain the same behavior.
appendExclamationMark s = s ++ "!"
findFourthIndex s = s !! 4
dropNine s = drop 9 s

-- 3.8.3 Write a function of type String -> Char which returns the third
-- character in a String. 
thirdLetter :: String -> Char
thirdLetter x = x !! 2

-- 3.8.4 Now change that function so the string operated on is always the same
-- and the variable represents the number of the letter you want to return.
letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

-- 3.8.5 Using the take and drop functions we looked at above, see if you can
-- write a function called rvrs (an abbreviation of ‘reverse’ used because
-- there is a function called ‘reverse’ already in Prelude, so if you call your
-- function the same name, you’ll get an error message). rvrs should take the
-- string “Curry is awesome” and return the result “awesome is Curry.”
rvrs = drop 9 s ++ take 4 (drop 5 s) ++ take 5 s
 where s = "Curry is awesome"

-- 3.8.6 Let’s see if we can expand that function into a module.
-- My answer is in Reverse.hs
