stringToList  String - [String]
stringToList []  = []
stringToList xxs@(xxs)   x == 'n' = stringToList xs
                     otherwise = ys  stringToList rest
                      where (ys, rest) = break (== 'n') xxs

reverseList  [a] - [a]  
reverseList [] = []  
reverseList (xxs) = reverseList xs ++ [x]

invertePoema  String - [String]
invertePoema x = reverseList . stringToList $ x

printListLines  [String] - IO()
printListLines [] = return ()
printListLines (xxs) = do  putStrLn x
                            printListLines xs

main = do
  printListLines(invertePoema Nao te amo mais.nEstarei mentindo dizendo quenAinda te quero como sempre quis.nTenho certeza quenNada foi em vao.nSinto dentro de mim quenVoce nao significa nada.nNao poderia dizer jamais quenAlimento um grande amor.nSinto cada vez mais quenJa te esqueci!nE jamais usarei a frasenEU TE AMO!nSinto, mas tenho que dizer a verdadenE tarde demais...)
