-- We provide the types and bottomed out (declared as undefined) terms.
-- Bottom and undefined will be explained in more detail later. The contents of
-- the terms are irrelevant here. You’ll use only the declarations provided and
-- what the Prelude provides by default unless otherwise specified. Your goal
-- is to make the ???’d declaration pass the typechecker by modifying it alone.

-- 1.
f' :: Int -> String
f' = undefined
g' :: String -> Char
g' = undefined
h :: Int -> Char
-- h = ???
h i = g'(f'(i))

-- 2.
data A
data B
data C
q :: A -> B
q = undefined
w :: B -> C
w = undefined
e :: A -> C
-- e = ???
e a = w(q(a))

-- 3.
data X
data Y
data Z
xz :: X -> Z
xz = undefined
yz :: Y -> Z
yz = undefined
xform :: (X, Y) -> (Z, Z)
-- xform = ???
xform (x, y) = (xz(x), yz(y))

-- 4.
munge :: (x -> y) -> (y -> (w, z)) -> x -> w
-- munge = ???
munge xToY yToWz x = fst(yToWz(xToY(x)))
