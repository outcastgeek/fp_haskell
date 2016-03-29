module Chp3 where

lstBool = [False, True, False ] :: [Bool]

lstChar = ['a','b', 'c', 'd'] :: [Char]

lstString = ["One","Two","Three"] :: [String]

add :: (Int, Int) -> Int
add (x, y) = x + y

zeroto :: Int -> [Int]
zeroto n = [0..n]

betteradd :: Int -> Int -> Int
betteradd x y = y + y

add' :: Int -> (Int -> Int)
add' x y = y + y

mult :: Int -> (Int -> (Int -> Int))
mult x y z = x * y * z

second xs = head (tail xs)

swap (x, y) = (y, x)

pair x y = (x, y)

double x = x * 2

palindrome xs = reverse xs == xs

twice f x = f(f x)

main :: IO()
main = do
  putStrLn "Prelude..."

  putStrLn "[False, True, False ] :: [Bool]"
  putStrLn . show $ lstBool

  putStrLn "['a','b', 'c', 'd'] :: [Char]"
  putStrLn . show $ lstChar

  putStrLn "[\"One\",\"Two\",\"Three\"] :: [String]"
  putStrLn . show $ lstString

  putStrLn "mult :: Int -> (Int -> (Int -> Int))"

  putStrLn "mult 3 2 7"
  putStrLn . show $ mult 3 2 7
  
  putStrLn "((mult 3) 2) 7"
  putStrLn . show $ ((mult 3) 2) 7
