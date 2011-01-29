module Digits (
  digits
) where

import Char (digitToInt)

digits :: (Integral a) => a -> [Int]
digits n = map (digitToInt) (show n)
