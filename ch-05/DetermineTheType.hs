-- 1. Determine the type returned
-- a. (* 9) 6
-- Num
 
-- b. head [(0,"doge"),(1,"kitteh")]
-- (Num, [Char])

-- c. head [(0 :: Integer ,"doge"),(1,"kitteh")]
-- (Int, [Char])

-- d. if False then True else False
-- Bool

-- e. length [1, 2, 3, 4, 5]
-- Int

-- f. (length [1, 2, 3, 4]) > (length "TACOCAT")
-- Bool

-- 2. Given 
-- x = 5
-- y = x + 5
-- w = y * 10
-- What is the type of w? 
-- w :: Num a => a

-- 3. Given
-- x = 5
-- y = x + 5
-- z y = y * 10
-- What is the type of z?
-- z :: Num a => a -> a

-- 4. Given
-- x = 5
-- y = x + 5
-- f = 4 / y 
-- What is the type of f?
-- f :: Fractional a => a

-- 5. Given
-- x = "Julie"
-- y = " <3 "
-- z = "Haskell"
-- f = x ++ y ++ z
-- What is the type of?
-- f :: [Char]
