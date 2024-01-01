-- Define a higher-order function to apply a function to each element of a list
applyFunction :: (Integer -> Integer) -> [Integer] -> [Integer]
applyFunction _ [] = []  -- Base case: empty list
applyFunction f (x:xs) = f x : applyFunction f xs

-- Example usage:
main :: IO ()
main = do
  putStrLn "Enter a list of integers (space-separated):"
  input <- getLine
  let numbers = map read (words input) :: [Integer]

  putStrLn "Choose a function to apply (e.g., square, double):"
  chosenFunction <- getLine

  let result = case chosenFunction of
                 "square" -> applyFunction square numbers
                 "double" -> applyFunction double numbers
                 _        -> error "Invalid function choice."

  putStrLn $ "Result: " ++ show result

-- Helper functions for demonstration
square :: Integer -> Integer
square x = x * x

double :: Integer -> Integer
double x = 2 * x
