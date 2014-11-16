module Main where
    import System.Random
    import Control.Monad

    maximum' :: (Ord a) => [a] -> a
    maximum' [] = error "empty"
    maximum' [x] = x
    maximum' (x:xs) = max x (maximum' xs)

    replicate' :: Int -> a -> [a]
    replicate' n x
        | n <= 0 = []
        | otherwise = x : replicate' (n - 1) x

    take' :: Int -> [a] -> [a]
    take' n _
        | n <= 0 = []
    take' _ [] = []
    take' n (x:xs) = x : take' (n-1) xs

    reverse' :: [a] -> [a]
    reverse' [] = []
    reverse' (x:xs) = reverse' xs ++ [x]

    repeat' :: a -> [a]
    repeat' x = x : repeat' x

    zip' :: [a] -> [b] -> [(a,b)]
    zip' _ [] = []
    zip' [] _ = []
    zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

    elem' :: (Eq a) => a -> [a] -> Bool
    elem' a [] = False
    elem' a (x:xs)
        | a == x = True
        | otherwise = elem' a xs
        -- | otherwise = a `elem'` same as L35

    quicksort :: (Ord a) => [a] -> [a]
    quicksort [] = []
    quicksort (x:xs) =
        let smallerOrEqual = [a | a <- xs, a <= x]
            larger = [a | a <- xs, a > x]
        in quicksort smallerOrEqual ++ [x] ++ quicksort larger



    main = do
        print $ maximum' [1,5,6,8,4,2]
        print $ replicate' 5 "hoge"
        print $ take' 3 [5,4,3,2,2]
        print $ reverse' "reverse"
        print $ take 3 $ repeat' 5
        print $ zip' "hoge" "HOGE"
        print $ 3 `elem'` [5,4,2,1]
        rands <- replicateM 10 $ (getStdRandom $ randomR (0, 99) :: IO Int)
        -- print rands
        print $ quicksort rands

