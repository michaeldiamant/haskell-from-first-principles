-- 4.3 Given the following datatype, answer the following questions:
data Mood = Blah | Woot deriving Show

-- 4.3.1 What is the type constructor, or name of this type?
-- Mood

-- 4.3.2 If the function requires a Mood value, what are the values you could
-- possibly use there?
-- Blah and Woot

-- 4.3.3 So far, we’ve written a type signature changeMood :: Mood -> Woot.
-- What’s wrong with that?
-- Cannot use a value / data constructor to compose type constructor

-- 4.3.4 Now we want to write the function that changes his mood. Given an
-- input mood, it gives us the other one. Fix any mistakes and complete the
-- function:
-- changeMood Mood = Woot
-- changeMood _ = Blah
-- Fix any mistakes and complete this function.
changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _ = Blah

-- 4.3.5 Enter all of the above — datatype (including the deriving Show bit),
-- your corrected type signature, and the corrected function into a source
-- file. Load it and run it in GHCi to make sure you got it right.
-- Prelude> :l exercises.hs 
-- [1 of 1] Compiling Main             ( exercises.hs, interpreted )
-- Ok, modules loaded: Main.
-- *Main> changeMood Blah 
-- Woot
-- *Main> changeMood Ws
--
-- <interactive>:7:12: Not in scope: data constructor ‘Ws’
-- *Main> changeMood Woot
-- Blah

-- 4.6 Find the mistakes.
-- 4.6.1 not True && true
-- Capitalize 't' in second 'True'

-- 4.6.2 not (x = 6)
-- Perform equality check via `not (x == 6)`

-- 4.6.3 (1 * 2) > 5
-- Statement is correct

-- 4.6.4 [Merry] > [Happy]
-- Enquote the literals in each list (e.g. "Merry")

-- 4.6.5 [1, 2, 3] ++ "look at me!"
-- Cannot append two disparate types (list of int and string)

-- 4.9 length is a function that takes a list and returns a result that tells
-- how many items are in the list.
awesome = ["Papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]

-- 4.9.1 Given the definition of length above, what would the type signature
-- be? How many arguments, of what type does it take? What is the type of the
-- result it evaluates to?
-- I assuume the type signature would be:  `length :: l -> Int`
-- Turns out, it requires a `Foldable` instance:
-- Prelude> :t length
-- length :: Foldable t => t a -> Int

-- 4.9.2 What are the results of the following expressions?
-- a. length [1, 2, 3, 4, 5]
-- 5

-- b. length [(1, 2), (2, 3), (3, 4)]
-- 3

-- c. length allAwesome
-- 2

-- d. length (concat allAwesome)
-- 5

-- 4.9.3 Given what we know about numeric types and the type signature of
-- length, look at these two expressions. One works and one returns an error.
-- Determine which will return an error and why.
-- Prelude> 6 / 3
-- and
-- Prelude> 6 / length [1, 2, 3]
-- The second expression returns an error because `length` returns `Int` rather
-- than `Num`:
-- Prelude> :t length
-- length :: Foldable t => t a -> Int
-- Prelude> :t  3
-- 3 :: Num a => a

-- 4.9.4 How can you fix the broken code from the preceding exercise using a
-- different division function/operator?
-- A fix is to use integral division via `div`:
-- Prelude> 6 `div` (length [1,2,3])
-- 2

-- 4.9.5 What is the type of the expression 2 + 3 == 5? What would we expect as
-- a result?
-- Boolean expression resulting in `True`

-- 4.9.6 What is the type and expected result value of the following:
-- Prelude> let x = 5
-- Prelude> x + 3 == 5
-- Boolean expression resulting in `False`

-- 4.9.7 Below are some bits of code. Which will work? Why or why not?
-- If they will work, what value would these reduce to?
-- Prelude> length allAwesome == 2
-- Works and reduces to `True`

-- Prelude> length [1, 'a', 3, 'b']
-- Does not work due to heterogenous types (`Int`, `Char`)

-- Prelude> length allAwesome + length awesome
-- Works and reduces to 5

-- Prelude> (8 == 8) && ('b' < 'a')
-- Works and reduces to `False`

-- Prelude> (8 == 8) && 9
-- Does not work due to lack of boolean expression after `&&`

-- 4.9.8 Write a function that tells you whether or not a given String (or list) is a
-- palindrome.

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

-- 4.9.9 Write a function to return the absolute value of a number using
-- if-then-else
myAbs :: Integer -> Integer
myAbs x = if (x < 0) then -1 * x else x 

-- 4.9.10 Fill in the definition of the following function, using fst and snd:
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))

-- 4.9.11 Correcting syntax
-- 1. Here, we want a function that adds 1 to the length of a string argument
-- and returns that result.
-- x = (+)
-- F xs = w 'x' 1
--   where w = length xs
x = (+)
addOne :: [a] -> Int
addOne xs = w `x` 1
  where w = length xs

-- 2. This is supposed to be the identity function, id.
-- \ X = x
identity :: x -> x
identity = \x -> x

-- 3. When fixed, this function will return 1 from the value [1, 2, 3]. Hint:
-- you may need to refer back to the section about variables conventions in 
-- “Hello Haskell” to refresh your memory of this notation.
-- \ x : xs -> x
listHead :: [x] -> x
listHead = \(x : xs) -> x 

-- 4. When fixed, this function will return 1 from the value (1, 2).
-- f (a b) = A
first :: (a, b) -> a
first (a, b) = a 

-- 4.9.12 Match function names to their types
-- 1. Which of the following types is the type of show?
-- a) show a => a -> String
-- b) Show a -> a -> String
-- c) Show a => a -> String
-- (c)

-- 2. Which of the following types is the type of (==)?
-- a) a -> a -> Bool
-- b) Eq a => a -> a -> Bool
-- c) Eq a -> a -> a -> Bool
-- d) Eq a => A -> Bool
-- (b)

-- 3. Which of the following types is the type of fst?
-- a) (a, b) -> a
-- b) b -> a
-- c) (a, b) -> b
-- (a)

-- 4. Which of the following types is the type of (+)?
-- a) (+) :: Num a -> a -> a -> Bool
-- b) (+) :: Num a => a -> a -> Bool
-- c) (+) :: num a => a -> a -> a
-- d) (+) :: Num a => a -> a -> a
-- e) (+) :: a -> a -> a
-- (d)
