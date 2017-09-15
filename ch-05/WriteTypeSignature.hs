-- Filing in the type signature for the definition of each expression.

-- 1.
functionH :: [x] -> x
functionH (x:_) = x

-- 2.
functionC :: Ord x => x -> x -> Bool
functionC x y = if (x > y) then True else False

-- 3.
functionS :: (x, y) -> y
functionS (x, y) = y
