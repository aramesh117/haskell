module Two where

myButLast :: [a] -> a
myButLast = last . init
