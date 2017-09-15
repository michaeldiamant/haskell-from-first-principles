-- You will be shown a type declaration, and you should categorize each type.
-- The choices are a fully polymorphic type variable, constrained polymorphic
-- type variable, or concrete type constructor.

-- 1.
-- f :: Num a => a -> b -> Int -> Int
-- `a` is constrained polymorphic
-- `b` is fully polymorphic
-- `Int` is concrete 

-- 2.
-- f :: zed -> Zed -> Blah
-- `zed` is fully polymorphic
-- `Zed` is concrete
-- `Blah` is concrete

-- 3.
-- f :: Enum b => a -> b -> C
-- `b` is constrained polymorphic
-- `a` is fully polymorphic
-- `C` is concrete

-- 4.
-- f :: f -> g -> C
-- `f` is concrete
-- `g` is fully polymorphic
-- `C` is concrete
