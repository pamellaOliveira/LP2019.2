inverterTexto :: String -> String
inverterTexto = unwords.reverse.words

main = do 
    putStrLn "Seu texto:"
    texto <- getLine
    print (inverterTexto texto)

