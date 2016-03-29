module Chp1 where

-- All functional programming can be compiled into these three functions (Check it out!)
-- S f g x = f x (g x)
-- K x y = x
-- I x = x
-- You can take any lambda and convert it to one of those S or K or I combinators

qsort [] = []
qsort (x:xs) = qsort ys ++ [x] ++ qsort zs
               where
                 ys = [a | a <- xs, a <= x]
                 zs = [b | b <- xs, b > x]

toPrintableList = map show

printList lst = mapM_ putStrLn $ toPrintableList lst

lb = sum [1..10]

main :: IO ()
main = do
  putStrLn "Quick Sorting..."
  let lst = [4,234,5,12,8]
  -- let lst_chr = ["aZ", "OO", "Der", "AW"]
  putStrLn "\nOriginal List:"
  printList lst
  -- printList lst_chr
  putStrLn "\nSorted List:"
  printList $ qsort lst
  -- printList $ qsort lst_chr
