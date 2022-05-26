{- Haskell program to generate a list of fibonacci numbers in a sequence.
 - Applying basic Haskell concepts for the first time.
 - https://www.schoolofhaskell.com/school/starting-with-haskell/introduction-to-haskell/1-haskell-basics
 -}

-- / Function to find the nth Fibonacci number
fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = (fib (n-1) + fib (n-2))

-- / Function to concatenate a list using fib function and recursion
fiblist :: Integer -> [Integer]
fiblist 0 = [0]
fiblist n = fib (n) : fiblist (n-1)

-- / Reverse the list before printing
main = print (reverse (fiblist 25))
