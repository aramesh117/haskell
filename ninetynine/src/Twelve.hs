module Twelve where

data RunLength a = Multiple Int a

decode :: [RunLength a] -> [a]
decode [] = []
decode (x:xs) = expand x ++ decode xs
                where expand :: RunLength a -> [a]
                      expand (Multiple len a) = replicate len a
