module Function
( doubleMe
, doubleUs
, doubleSmallNumber
, cananO'Brien
) where

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = (if x > 100 then x else x * 2) + 1

cananO'Brien = "It's a-me, Conan O'Brien!"
