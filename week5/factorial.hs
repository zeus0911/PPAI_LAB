-- Define a recursive function to calculate factorial
factorial :: Integer -> Integer
factorial n
  | n < 0 = error "Factorial is undefined for negative integers."
  | n == 0 = 1  -- Base case: factorial of 0 is 1
  | otherwise = n * factorial (n - 1)

-- Example usage:
main :: IO ()
main = do
  putStrLn "Enter a non-negative integer:"
  input <- readLn :: IO Integer

  let result = factorial input
  putStrLn $ "Factorial: " ++ show result
