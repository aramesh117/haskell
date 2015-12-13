module Eighteen where

slice :: [a] -> Int -> Int -> [a]
slice xs beg end = sliceAccum xs beg end 1
                   where
                       sliceAccum :: [a] -> Int -> Int -> Int -> [a]
                       sliceAccum [] _ _ _ = []
                       sliceAccum (x:xs) beg end pos
                           | pos >= beg && pos <= end = x : sliceAccum xs beg end (pos + 1)
                           | otherwise = sliceAccum xs beg end (pos + 1)
