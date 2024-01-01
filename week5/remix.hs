-- Define the calculatePower function
calculatePower :: Integer -> Integer -> Integer
calculatePower base exponent
  | exponent < 0 = error "Exponent must be non-negative."
  | exponent == 0 = 1
  | otherwise = base * calculatePower base (exponent - 1)

-- Define the factorial function
factorial :: Integer -> Integer
factorial n
  | n < 0 = error "Factorial is undefined for negative integers."
  | n == 0 = 1
  | otherwise = n * factorial (n - 1)

-- Define the applyFunction function
applyFunction :: (Integer -> Integer) -> [Integer] -> [Integer]
applyFunction _ [] = []
applyFunction f (x:xs) = f x : applyFunction f xs

-- Custom function for applyFunction (e.g., doubling the number)
double :: Integer -> Integer
double x = 2 * x

-- Main program
main :: IO ()
main = do
  putStrLn "Enter a base:"
  base <- readLn :: IO Integer

  putStrLn "Enter an exponent:"
  exponent <- readLn :: IO Integer
  let resultPower = calculatePower base exponent
  putStrLn $ "Result of raising " ++ show base ++ " to the power of " ++ show exponent ++ ": " ++ show resultPower

  putStrLn "Enter a non-negative integer:"
  input <- readLn :: IO Integer
  let resultFactorial = factorial input
  putStrLn $ "Factorial of " ++ show input ++ ": " ++ show resultFactorial

  putStrLn "Enter a list of integers (comma-separated):"
  inputList <- getLine
  let numbers = map read (words $ map (\c -> if c == ',' then ' ' else c) inputList) :: [Integer]

  let resultApplyFunction = applyFunction double numbers
  putStrLn $ "Result : " ++ show resultApplyFunction
