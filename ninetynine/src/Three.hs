module Three where

elementAt :: [a] -> Int -> a
elementAt xs pos
 | pos == 1 = head xs
 | pos <= length xs && pos > 0 = elementAt (tail xs) (pos - 1)
 | pos <= 0 = head xs
 | pos > length xs = last xs
 | otherwise = head xs
