module Main where

import Eight

main :: IO ()
main = print $ compress [1,1,2,3,4,4,4,4,5,6,7,8,8,8,8,8]
