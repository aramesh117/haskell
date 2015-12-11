module Sixteen where

dropEvery :: [a] -> Int -> [a]
dropEvery all@(x:xs) n = dropEveryAccum all n 1
                         where
                             dropEveryAccum :: [a] -> Int -> Int -> [a]
                             dropEveryAccum [] _ _ = []
                             dropEveryAccum all@(x:xs) n acc
                                 | acc `mod` n == 0 = dropEveryAccum xs n (acc + 1)
                                 | otherwise = x : dropEveryAccum xs n (acc + 1)
