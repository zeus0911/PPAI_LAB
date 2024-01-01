-- Define a pure function to calculate the power
calculatePower :: Integer -> Integer -> Integer
calculatePower base exponent
  | exponent < 0 = error "Exponent must be non-negative."
  | exponent == 0 = 1
  | otherwise = base * calculatePower base (exponent - 1)

-- Example usage:
main :: IO ()
main = do
  putStrLn "Enter the base:"
  base <- readLn :: IO Integer

  putStrLn "Enter the exponent:"
  exponent <- readLn :: IO Integer

  let result = calculatePower base exponent
  putStrLn $ "Result: " ++ show result
