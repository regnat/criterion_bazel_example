{-# LANGUAGE OverloadedLists #-}

module Lib (fib) where

fib m | m < 0     = error "negative!"
      | otherwise = go m
  where go 0 = 0
        go 1 = 1
        go n = go (n-1) + go (n-2)
