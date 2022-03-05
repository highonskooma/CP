infix 5  ><

p1 = fst
p2 = snd

-- FICHA 1 EX 1.A
-- (a)
f :: (Num a) => a -> a
f x = 2 * x

g :: (Num a) => a -> a
g x = x + 1
--split
s1 :: (Num a) => a -> (a, a)
s1 x = (2 * x, x + 1)
--produto 
prod1 :: (Num a) => a -> a -> (a, a)
prod1 x y = (f x, g y)

s2 :: (Num a) => a -> (a, a)
s2 x = (x+1, 2*x)

prod2 :: (Num a) => a -> a -> (a, a)
prod2 x y = (x+1, 2*y)

s4 :: (Num a) => a -> a -> (a, a)
s4 x y = (x+y, (2*x)+1)

prod4 :: (Num a) => a -> a -> (a, a)
prod4 x y = (x+y, (2*y)+1)

split :: (a -> b) -> (a -> c) -> a -> (b,c)
split f g x = (f x, g x)

(><) :: (a -> b) -> (c -> d) -> (a,c) -> (b,d)
f >< g = split (f . p1) (g . p2)   


main = do
    print ((split f g) 2)
    print ((f . g) 2)
    putStrLn "s1: " >> print (s1 2)
    putStrLn "prod1: " >> print (prod1 2 4)
    putStrLn "s2: " >> print (s2 2 )
    putStrLn "s4: " >> print (s4 2 4)
    putStrLn "f >< g: " >> print ((f >< g) (2,4))