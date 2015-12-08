module Six where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = reverse xs == xs
