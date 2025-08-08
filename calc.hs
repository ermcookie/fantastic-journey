-- simple calculator in Haskell
main :: IO ()
-- define operations
sum :: Int -> Int -> Int
sum x y = x + y
mult :: Int -> Int -> Int
mult x y = x * y
diff :: Int -> Int -> Int
diff x y = x - y
divi :: Int -> Int -> Int
divi x y = x `div` y
main = do
    putStrLn "Enter first number:"
    x <- getLine
    putStrLn "Enter second number:"
    y <- getLine
    putStrLn "Choose operation: +, -, *, /"
    op <- getLine
    let a = read x :: Int
        b = read y :: Int
        result = case op of
            "+" -> Main.sum a b
            "-" -> Main.diff a b
            "*" -> Main.mult a b
            "/" -> Main.divi a b
            _   -> error "Unknown operation"
    putStrLn $ "Result: " ++ show result
