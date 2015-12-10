module Ten where

import Nine
encode :: Eq a => [a] -> [(Int, a)]
encode xs = map runlength (pack xs)
            where
                runlength :: [a] -> (Int, a)
                runlength all@(x:xs) = (length all, x)
