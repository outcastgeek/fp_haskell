module Chp4 where

isDigit :: Char -> Bool
isDigit c = c >= '0' && c <= '9'

sigNum :: Int -> Int
sigNum n | n < 0 = -1
         | n == 0 = 0
         | otherwise = 1

aBs n | n >= 0 = n
      | otherwise = -n

odds n = map (\x -> x * 2 + 1) [0..n-1]

main :: IO()
main = do
  putStrLn "Prelude..."

  putStrLn "isDigit 'A'"
  putStrLn . show $ isDigit 'A'

  putStrLn "signum 5"
  putStrLn . show $ sigNum 5

  putStrLn "odds 20"
  putStrLn . show $ odds 20
