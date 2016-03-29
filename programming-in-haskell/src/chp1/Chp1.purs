module Chp1 where

import Prelude
import Control.Monad.Eff
import Control.Monad.Eff.Console

qsort [] = []
qsort (x:xs) = qsort ys ++ [x] ++ qsort zs
                 where
                   ys = [a | a <- xs, a <= x]
                   zs = [b | b <- xs, b > x]

toPrintableList = map show

printList lst = mapM_ putStrLn $ toPrintableList lst

main :: forall e. Eff (console :: CONSOLE | e) Unit
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
