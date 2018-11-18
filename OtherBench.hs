import           Criterion.Main
import           Lib            (fib)

main = defaultMain [
  bgroup "fib" [ bench "5"  $ whnf fib 5
               ]
  ]
