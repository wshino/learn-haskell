module Section1 where
    import Function as F

    boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
    length' xs = sum [1 | _ <- xs]
    removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

    main = do
        let lostNumbers = [4,8,15,16,23,42]
        print $ lostNumbers
        print $ [1,2,3,4] ++ [9,10,11,12]
        print $ "hello" ++ " " ++ "world"
        print $ ['w','o'] ++ ['o','t']
        print $ 'A':" SMALL CAT"
        print $ 5:[1,2,3,4,5]
        print $ [1,2,3,4] ++ [5]
        print $ "Steve Buscemi" !! 6 -- get a element from index
        print $ [9.4, 33.2, 96.2, 11.2, 23.25] !! 1 -- get a element from index
        let b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
        print $ b
        print $ b ++ [[1,1,1,1]]
        print $ [6,6,6]:b
        print $ b !! 2
        print $ [2,3,1] > [2,1,0]
        print $ head [5,4,3,2,1]
        print $ tail [5,4,3,2,1]
        print $ last [5,4,3,2,1]
        print $ init [5,4,3,2,1]
        print $ length [5,4,3,2,1]
        print $ null [5,4,3,2,1]
        print $ null []
        print $ reverse [5,4,3,2,1]
        print $ take 3 [5,4,3,2,1]
        print $ take 1 [5,4,3,2,1]
        print $ take 5 [5,4]
        print $ take 0 [5,4]
        print $ drop 3 [5,4,3,2,1]
        print $ maximum [5,4,9,2,1]
        print $ sum [5,4,9,2,1]
        print $ product [5,4,9,2,1]
        print $ 4 `elem` [5,4,9,2,1]
        print $ 7 `elem` [5,4,9,2,1]
        print $ [1..20]
        print $ ['a'..'z']
        print $ ['K'..'Z']
        print $ [2,4..20]
        print $ [3,6..20]
        print $ [20,19..1]
        print $ [13,26..24*13]
        print $ take 24 [13,26..] -- this one is better
        print $ take 10 $ cycle [1,2,3]
        print $ replicate 3 10
        print $ [x*2 | x <- [1,2,3]]
        print $ [x*2 | x <- [1..10], x*2 >= 12]
        print $ [x | x <- [50..100], x `mod` 7 == 3]
        print $ boomBangs [1,2,20,31,90,93]
        print $ boomBangs [7..13]
        print $ [x | x <- [10..20], x /= 13, x /= 15, x /= 19]
        print $ [x+y | x <- [1,2,3], y <- [10,100,1000]]
        print $ [x*y | x <- [2,5,10], y <- [8, 10 , 11], x * y > 50]
        let nouns = ["hobo", "frog", "pope"]
        let adjectives = ["lazy","grouchy","scheming"]
        print $ [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
        print $ length' [2,5,10]
        print $ removeNonUppercase "hOgEmOgefUgA"
        let xxs = [[1,2,3,5,4,3,5,4], [1,2,34,56,7,8,8,6]]
        print $ [[x | x <- xs, even x]| xs <- xxs]
        print (1,3)
        print (3, 'a', "hello")
        -- print [(1,2),(8,11,5),(5,6)] -- error
        print [(1,2),(8,11),(5,6)] -- success

        -- pair
        print $ fst (8, 11)
        print $ snd (8, 11)

        print $ zip [1,2,3,4,5] [5,5,5,5,5]
        print $ zip [1..5] ["one", "two", "three", "four", "five"]

        -- 直角三角形を見つける
        let triples = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a+b+c == 24]
        print $ triples