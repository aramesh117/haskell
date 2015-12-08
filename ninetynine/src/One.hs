module One where

myLast :: [a] -> a
myLast = head . reverse
