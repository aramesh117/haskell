module Nineteen where

rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate xs per 
    | per >= 0 = let (head, tail) = splitAt per xs
                in
                    tail ++ head
    | otherwise = let perPos = (per `mod` length xs + length xs) `mod` length xs
                  in
                      let (f, s) = splitAt perPos xs
                      in
                          s ++ f
