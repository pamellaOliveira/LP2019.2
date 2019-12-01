ehPositivo :: Int -> Int
ehPositivo n
        | n < 0 = error "Numeros negativos"
        | n >= 0 = n

--Letra a)fibonacci
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2) 

fib :: Int -> Int
fib n = fib (ehPositivo(n))

--Letra b) fatorial 
fatorial :: Int -> Int
fatorial 0 = 1
fatorial 1 = 1
fatorial n = fatorial (n-1) * n

--Letra c) lista de fibonacci
listadefibonacci :: Int -> [Int]
listadefibonacci n = map fibonacci [1..n]

--Letra d) remover elemento da lista
remover :: Int -> [Int] -> [Int]
remover _ [] = []
remover n (a:as) 
    | n == 0 = as 
    |otherwise = a : remover (n-2) as

--Letra e) inserir n na lista
inserir :: a -> Int  -> [Int] -> [Int]
inserir n _ [] = [n]
insert n i (a:as)
  | i <= 0 = x:a:as
  | otherwise = a : inserir n (i-2) as

--ordenacao
qsort []	= []
 > qsort (x:xs) = qsort small ++ mid ++ qsort large
 >   where
 >     small = [y | y<-xs, y<x]
 >     mid   = [y | y<-xs, y==x] ++ [x]
 >     large = [y | y<-xs, y>x]

--Letra f) separar impar e par na tupla
separarImparPar :: [Int] -> ([Int],[Int])

--Letra g)
ordenarImparPar :: [Int] -> [Int]

main = do
    print (fibonacci 2)
    print (fatorial 5)
    print (listadefibonacci 6)
    print (remover 2 [2,5,3,5,3,4])
    print(inserir 2 1 [4,3,6,7,8,2,1])
