module Chp5 where

squares1and5 :: [Int]
squares1and5 = [x^2 | x <- [1..5]]

possiblePairs :: [(Int,Int)]
possiblePairs = [(x, y) | x <- [1,2,3], y <- [4,5]]

allPossiblePairsOfList :: [(Int,Int)]
allPossiblePairsOfList = [(x,y) | x <- [1..3], y <- [x..3]]

someConcat :: [[a]] -> [a]
someConcat xss = [x | xs <- xss, x <- xs]

firsts :: [(a,b)] -> [a]
firsts ps = [x | (x,_) <- ps]

longueur :: [a] -> Int
longueur xs = sum [1 | _ <- xs]

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

main :: IO()
main = do
  putStrLn "List Comprehensions..."

  putStrLn "[x^2 | x <- [1..5]]"
  print . show $ squares1and5

  putStrLn "[(x, y) | x <- [1,2,3], y <- [4,5]]"
  print . show $ possiblePairs

  putStrLn "[(x,y) | x <- [1..9], y <- [x..9]]"
  print . show $ allPossiblePairsOfList

  putStrLn "someConcat xss = [x | xs <- xss, x <- xs] of [[1..3],[4..9]]"
  print . show $ someConcat [[1..3],[4..9]]

  putStrLn "firsts ps = [x | (x,_) <- ps] of [(1,5), (5,6), (7,8)]"
  print . show $ firsts [(1,5), (5,6), (7,8)]

  putStrLn "longueur xs = sum [1 | _ <- xs] of [435..1083470]"
  print . show $ longueur [435..1083470]

  putStrLn "factors n = [x | x <- [1..n], n `mod` x == 0] of 432"
  print . show $ factors 432


