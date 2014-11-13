module Main where

    lucky :: Int -> String
    lucky 7 = "LUCKY"
    lucky x = "Sorry"

    sayMe :: Int -> String
    sayMe 1 = "1"
    sayMe 2 = "2"
    sayMe 3 = "3"
    sayMe x = "Not between 1 and 3"

    factorial :: Int -> Int
    factorial 0 = 1
    factorial n = n * factorial (n - 1)

    charName :: Char -> String
    charName 'a' = "Albert"
    charName 'b' = "Broseph"
    charName 'c' = "Cecil"

    addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
    -- addVectors a b = (fst a + fst b, snd a + snd b)
    addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2) -- looking good

--    head' :: [a] -> a
--    head' [] = error "empty list"
--    head' (x:_) = x

    head' :: [a] -> a
    head' xs = case xs of [] -> error "empty list"
                          (x:_) -> x

    tell :: (Show a) => [a] -> String
    tell [] = "empty list"
    tell (x:[]) = "one element"
    tell (x:y:[]) = "two elements"
    tell (x:y:_) = "long list, the first two elements are: " ++ show x ++ " and " ++ show y

    badAdd :: (Num a) => [a] -> a
    badAdd (x:y:z:[]) = x + y + z

    firstLetter :: String -> String
    firstLetter "" = "empty"
    firstLetter all@(x:xs) = "the first letter of " ++ all ++ " is " ++ [x]

    bmiTell :: Double -> Double -> String
    bmiTell weight height
        | bmi <= skinny = "underweight"
        | bmi <= normal = "normal"
        | bmi <= fat = "fat"
        | otherwise = "whale"
        where bmi = weight / height ^ 2 -- インデントがあってないとエラー
              (skinny, normal, fat ) = (18.5, 25.0, 30.0)

    max' :: (Ord a) => a -> a -> a
    max' a b
        | a <= b = b
        | otherwise = a

    myCompare :: (Ord a) => a -> a -> Ordering
    a `myCompare` b
        | a == b = EQ
        | a <= b = LT
        | otherwise = GT

    greet :: String -> String
    greet name
        | name == "Juan" = niceGreeting ++ " Juan"
        | name == "Fernando" = niceGreeting ++ " Fernando"
        | otherwise = badGreeting ++ " " ++ name
        where niceGreeting = "hello,"
              badGreeting = "Oh,"

    cylinder :: Double -> Double -> Double
    cylinder r h =
        let sideArea = 2 * pi * r * h
            topArea = pi * r ^ 2
        in sideArea + 2 * topArea

--    describeList :: [a] -> String
--    describeList ls = "the list is "
--                        ++ case ls of [] -> "empty"
--                                      [x] -> "a singleton element"
--                                      (x:_) -> "longer list"

    describeList :: [a] -> String
    describeList ls = "the list is " ++ what ls
        where what [] = "empty"
              what [x] = "one element"
              what xs = "longer list"

    main = do
        print $ lucky 8
        print $ lucky 7
        print $ sayMe 2
        print $ sayMe 5
        print $ factorial 3
        print $ factorial 1

        print $ charName 'b'
        let xs = [(1,3), (4,3), (5,3)]
        print $ [a + b | (a,b) <- xs]
        print $ head' [4,5,6]
        print $ tell [1]
        print $ tell [True, False]
        print $ tell [1,2,3,4]
        -- print $ tell [] 空のリストが渡せない
        -- print $ badAdd [100, 20] -- Non-exhaustive patternn
        print $ firstLetter "Dracula"
        print $ bmiTell 52 1.65
        print $ 3 `myCompare` 2
        print $ greet "Juan"
        print $ [let square x = x * x in (square 5,square 3, square 2)]
        print $ (let (a, b, c) = (1, 2, 3) in a+b+c) * 100
        let zoot x y z = x * y + z
        print $ zoot 3 9 2
        -- let boot x y z = x * y + z in boot 3 4 2 error
        print $ describeList "aaa"