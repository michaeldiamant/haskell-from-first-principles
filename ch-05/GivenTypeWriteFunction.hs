-- You will be shown a type and a function that needs to be written. Use the
-- information the type provides to determine what the function should do.

-- 1. There is only one function definition that typechecks and doesn’t go
-- into an infinite loop when you run it.
i :: a -> a
i a = a

-- 5.8.2 There is only one version that works.
c :: a -> b -> a
c a _ = a

-- 5.8.3 Given alpha equivalence are c'' and c (see above) the same thing?
c'' :: b -> a -> b
c'' = c
-- Yes, they are the same or the above line would not compile.

-- 4. Only one version that works.
c' :: a -> b -> b
c' _ b = b

-- 5. There are multiple possibilities, at least two of which you’ve seen
-- in previous chapters.
r :: [a] -> [a]
r a = tail a
-- r a = take 0 a
-- r a = drop 0 a

-- 6. Only one version that will typecheck.
co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC (aToB a)

-- 5.8.7 One version will typecheck.
a :: (a -> c) -> a -> a
a _ aa = aa

-- 5.8.8 One version will typecheck.
a' :: (a -> b) -> a -> b
a' aToB a = aToB a
