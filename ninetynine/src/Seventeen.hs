module Seventeen where

split :: [a] -> Int -> ([a], [a])
split all@(x:xs) n = splitAccum all n 1
                     where 
                     splitAccum :: [a] -> Int -> Int -> ([a], [a])
                     splitAccum [] _ _ = ([], [])
                     splitAccum all@(x:xs) n accum
                         | accum > n = ([], all)
                         | otherwise = let (head, tail) = splitAccum xs n (accum + 1)
                                       in (x : head, tail)
