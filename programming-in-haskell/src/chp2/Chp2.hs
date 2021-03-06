module Chp2 where

double x = x + x

--quadruple x = double (double x)
quadruple = double . double

factorial n = product[1..n]

average ns = sum ns `div` length ns

main :: IO()
main = do
  putStrLn "Prelude..."

  putStrLn "head [1, 2, 3, 4, 5]"
  putStrLn . show $ head [1, 2, 3, 4, 5]

  putStrLn "tail [1, 2, 3, 4, 5]"
  putStrLn . show $ tail [1, 2, 3, 4, 5]
  
  putStrLn "[1, 2, 3, 4, 5] !! 2"
  putStrLn . show $ [1, 2, 3, 4, 5] !! 2

  putStrLn "take 3 [1, 2, 3, 4, 5]"
  putStrLn . show $ take 3 [1, 2, 3, 4, 5]

  putStrLn "drop 3 [1, 2, 3, 4, 5]"
  putStrLn . show $ drop 3 [1, 2, 3, 4, 5]

  putStrLn "length [1, 2, 3, 4, 5]"
  putStrLn . show $ length [1, 2, 3, 4, 5]

  putStrLn "sum [1, 2, 3, 4, 5]"
  putStrLn . show $ sum [1, 2, 3, 4, 5]

  putStrLn "[1, 2, 3] ++ [4, 5]"
  putStrLn . show $ [1, 2, 3] ++ [4, 5]

  putStrLn "reverse [1, 2, 3, 4, 5]"
  putStrLn . show $ reverse [1, 2, 3, 4, 5]

  putStrLn "last [1, 2, 3, 4, 5]"
  putStrLn . show $ last [1, 2, 3, 4, 5]

  putStrLn "double 2"
  putStrLn . show $ double 2

  putStrLn "quadruple 10"
  putStrLn . show $ quadruple 10

  putStrLn "factorial 10"
  putStrLn . show $ factorial 10

  putStrLn "average [1, 2, 3, 4, 5]"
  putStrLn . show $ average [1, 2, 3, 4, 5]
