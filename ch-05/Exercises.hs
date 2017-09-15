-- 5.3 Match the function to its type signature.
-- 1. Functions:
-- a) not
-- b) length
-- c) concat
-- d) head
-- e) (<)
-- 2. Type signatures:
-- a) _ :: [a] -> a
-- Matches with (d)
-- b) _ :: [[a]] -> [a]
-- Matches with (c)
-- c) _ :: Bool -> Bool
-- Matches with (a)
-- d) _ :: [a] -> Int
-- Matches with (b)
-- e) _ :: Ord a => a -> a -> Bool
-- Matches with (e)

-- 5.4.1 If the type of f is a -> a -> a -> a, and the type of x is Char then the
-- type of f x is
-- a) Char -> Char -> Char
-- b) x -> x -> x -> x
-- c) a -> a -> a
-- d) a -> a -> a -> Char
-- (a)

-- 5.4.2 If the type of g is a -> b -> c -> b, then the type of
-- g 0 'c' "woot" is
-- a) String
-- b) Char -> String
-- c) Int
-- d) Char
-- (d)

-- 5.4.3 If the type of h is (Num a, Num b) => a -> b -> b, then the type of
-- h 1.0 2 is:
-- a) Double
-- b) Integer
-- c) Integral b => b
-- d) Num b => b
-- (d)

-- 5.4.4 If the type of h is (Num a, Num b) => a -> b -> b, then the type of
-- h 1 (5.5 :: Double) is
-- a) Integer
-- b) Fractional b => b
-- c) Double
-- d) Num b => b
-- (b)

-- 5.4.5 If the type of jackal is (Ord a, Eq b) => a -> b -> a, then the type
-- of 
-- jackal "keyboard" "has the word jackal in it"
-- a) [Char]
-- b) Eq b => b
-- c) b -> [Char]
-- d) b
-- e) Eq b => b -> [Char]
-- (a)

-- 5.4.6 If the type of jackal is (Ord a, Eq b) => a -> b -> a, then the type 
-- of jackal "keyboard"
-- a) b
-- b) Eq b => b
-- c) [Char]
-- d) b -> [Char]
-- e) Eq b => b -> [Char]
-- (e)

-- 5.4.7 If the type of kessel is (Ord a, Num b) => a -> b -> a, then the type of 
-- kessel 1 2 is
-- a) Integer
-- b) Int
-- c) a
-- d) (Num a, Ord a) => a
-- e) Ord a => a
-- f) Num a => a
-- (d)

-- 5.4.8 If the type of kessel is (Ord a, Num b) => a -> b -> a, then the type
-- of
-- kessel 1 (2 :: Integer) is
-- a) (Num a, Ord a) => a
-- b) Int
-- c) a
-- d) Num a => a
-- e) Ord a => a
-- f) Integer
-- (a)

-- 5.4.9 If the type of kessel is (Ord a, Num b) => a -> b -> a, then the type
-- of
-- kessel (1 :: Integer) 2 is
-- a) Num a => a
-- b) Ord a => a
-- c) Integer
-- d) (Num a, Ord a) => a
-- e) a
-- (c)

-- 5.5.1 Given the type a -> a, which is the type for id, attempt to make a
-- function that is not bottom and terminates successfully that does something
-- other than returning the same value. This is impossible, but you should try
-- it anyway.
idd :: a -> a
idd a = a

-- 5.5.2 We can get a more comfortable appreciation of para-metricity by
-- looking at a -> a -> a. This hypothetical function a -> a -> a has 
-- two–and only two–implementations. Write both possible versions of 
-- a -> a -> a. 
-- After doing so, try to violate the constraints of parametrically polymorphic
-- values we outlined above.
f :: a -> a -> a
f a b = a

g :: a -> a -> a
g a b = b

-- 5.6.1
-- Type signature of general function
-- (++) :: [a] -> [a] -> [a]
-- How might that change when we apply
-- it to the following value?
-- myConcat x = x ++ " yo"
-- Becomes:
-- myConcat :: [Char] -> [Char]

-- 5.6.2 
-- General function
-- (*) :: Num a => a -> a -> a
-- Applied to a value
-- myMult x = (x / 3) * 5
-- Becomes:
-- myMult :: Fractional a => a -> a

-- 5.6.3
-- take :: Int -> [a] -> [a]
-- myTake x = take x "hey you"
-- Becomes:
-- myTake :: Int -> [Char]

-- 5.6.4
-- (>) :: Ord a => a -> a -> Bool
-- myCom x = x > (length [1..10])
-- Becomes:
-- myCom :: Ord Int => Int -> Bool

-- 5.6.5
-- (<) :: Ord a => a -> a -> Bool
-- myAlph x = x < 'z'
-- Becomes:
-- myAlph :: Char -> Bool

-- 5.8 Multiple choice
-- See MultipleChoice.hs

-- 5.8 Determine the type
-- See DetermineTheType.hs

-- 5.8. Does it compile?  
-- See DoesItCompile.hs

-- 5.8 Type variable or specific type constructor?  
-- See TypeVariableOrSpecificTypeConstructor.hs

-- 5.8 Write a type signature
-- See WriteTypeSignature.hs

-- 5.8 Given a type, write the function
-- See GivenTypeWriteFunction.hs

-- 5.8 Fix it
-- See (1) Sing.hs, (2) Sing2.hs, (3) Arith3Broken.hs

-- 5.8 Type-Kwon-Do
-- See TypeKwonDo.hs

