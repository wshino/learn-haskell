module Section2 where

    removeNonUppercase :: [Char] -> [Char]
    removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

    addThree :: Int -> Int -> Int -> Int
    addThree x y z =  x + y + z

    factorial :: Integer -> Integer
    factorial n = product [1..n]

    circumference :: Float -> Float
    circumference r = 2 * pi * r

    circumference' :: Double -> Double
    circumference' r = 2 * pi * r

    main = do
        print $ removeNonUppercase "hogeMOGE"
        print $ factorial 2
        print $ circumference 4.0
        print $ circumference' 4.0
        print $ fromIntegral (length [1,2,3,4]) + 3.2