module Keysmash where
import System.Random
generate :: RandomGen g => Int -> g -> ([Char], [g])
generate idx g = 
    let
        ((first, nextState), nextRand) = randState idx g
        (restStr, restRand) = generate nextState nextRand
    in (first : restStr, g : restRand)

randState :: RandomGen g => Int -> g -> ((Char, Int), g)
randState 0 g =
    let (idx, nextState) = uniformR (1, 8) g
    in (stepState 0 idx, nextState)
randState 1 g =
    let (idx, nextState) = uniformR (1, 30) g
    in (stepState 1 idx, nextState)
randState 2 g =
    let (idx, nextState) = uniformR (1, 3) g
    in (stepState 2 idx, nextState)
randState 3 g =
    let (idx, nextState) = uniformR (1, 17) g
    in (stepState 3 idx, nextState)
randState 4 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 4 idx, nextState)
randState 5 g =
    let (idx, nextState) = uniformR (1, 26) g
    in (stepState 5 idx, nextState)
randState 6 g =
    let (idx, nextState) = uniformR (1, 34) g
    in (stepState 6 idx, nextState)
randState 7 g =
    let (idx, nextState) = uniformR (1, 31) g
    in (stepState 7 idx, nextState)
randState 8 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 8 idx, nextState)
randState 9 g =
    let (idx, nextState) = uniformR (1, 22) g
    in (stepState 9 idx, nextState)
randState 10 g =
    let (idx, nextState) = uniformR (1, 20) g
    in (stepState 10 idx, nextState)
randState 11 g =
    let (idx, nextState) = uniformR (1, 11) g
    in (stepState 11 idx, nextState)
randState 12 g =
    let (idx, nextState) = uniformR (1, 2) g
    in (stepState 12 idx, nextState)
randState 13 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 13 idx, nextState)
randState 14 g =
    let (idx, nextState) = uniformR (1, 7) g
    in (stepState 14 idx, nextState)
randState 15 g =
    let (idx, nextState) = uniformR (1, 2) g
    in (stepState 15 idx, nextState)
randState 16 g =
    let (idx, nextState) = uniformR (1, 7) g
    in (stepState 16 idx, nextState)
randState _ _ = error "invalid state"

stepState :: Int -> Int -> (Char, Int)
stepState 0 n
    | n <= 4 = ('a', 1)
    | n <= 5 = ('k', 10)
    | n <= 6 = ('d', 3)
    | n <= 7 = ('l', 11)
    | n <= 8 = ('h', 7)
stepState 1 n
    | n <= 7 = ('h', 7)
    | n <= 13 = ('j', 9)
    | n <= 18 = ('f', 5)
    | n <= 21 = ('l', 11)
    | n <= 24 = ('u', 16)
    | n <= 26 = ('g', 6)
    | n <= 28 = ('d', 3)
    | n <= 29 = (';', 0)
    | n <= 30 = ('r', 14)
stepState 2 n
    | n <= 1 = ('k', 10)
    | n <= 2 = ('a', 1)
    | n <= 3 = ('h', 7)
stepState 3 n
    | n <= 7 = ('f', 5)
    | n <= 12 = ('h', 7)
    | n <= 13 = ('s', 15)
    | n <= 14 = ('g', 6)
    | n <= 15 = ('k', 10)
    | n <= 16 = ('j', 9)
    | n <= 17 = ('b', 2)
stepState 4 n
    | n <= 1 = ('g', 6)
stepState 5 n
    | n <= 12 = ('g', 6)
    | n <= 16 = ('k', 10)
    | n <= 19 = ('j', 9)
    | n <= 21 = ('l', 11)
    | n <= 23 = ('h', 7)
    | n <= 25 = ('d', 3)
    | n <= 26 = ('a', 1)
stepState 6 n
    | n <= 8 = ('a', 1)
    | n <= 14 = ('h', 7)
    | n <= 18 = (';', 0)
    | n <= 22 = ('j', 9)
    | n <= 25 = ('l', 11)
    | n <= 27 = ('b', 2)
    | n <= 29 = ('f', 5)
    | n <= 30 = ('d', 3)
    | n <= 31 = ('s', 15)
    | n <= 32 = ('k', 10)
    | n <= 33 = ('u', 16)
    | n <= 34 = ('n', 12)
stepState 7 n
    | n <= 7 = ('g', 6)
    | n <= 11 = ('j', 9)
    | n <= 14 = ('f', 5)
    | n <= 17 = ('k', 10)
    | n <= 20 = ('a', 1)
    | n <= 23 = ('d', 3)
    | n <= 25 = ('i', 8)
    | n <= 27 = ('r', 14)
    | n <= 28 = (';', 0)
    | n <= 29 = ('n', 12)
    | n <= 30 = ('h', 7)
    | n <= 31 = ('u', 16)
stepState 8 n
    | n <= 1 = ('u', 16)
stepState 9 n
    | n <= 5 = ('h', 7)
    | n <= 9 = ('d', 3)
    | n <= 12 = ('k', 10)
    | n <= 15 = ('f', 5)
    | n <= 17 = ('a', 1)
    | n <= 18 = ('r', 14)
    | n <= 19 = ('e', 4)
    | n <= 20 = ('o', 13)
    | n <= 21 = ('l', 11)
    | n <= 22 = ('g', 6)
stepState 10 n
    | n <= 6 = ('a', 1)
    | n <= 10 = ('f', 5)
    | n <= 13 = ('g', 6)
    | n <= 16 = ('j', 9)
    | n <= 17 = ('s', 15)
    | n <= 18 = ('d', 3)
    | n <= 19 = ('l', 11)
    | n <= 20 = ('h', 7)
stepState 11 n
    | n <= 4 = ('k', 10)
    | n <= 6 = (';', 0)
    | n <= 7 = ('s', 15)
    | n <= 8 = ('g', 6)
    | n <= 9 = ('f', 5)
    | n <= 10 = ('d', 3)
    | n <= 11 = ('a', 1)
stepState 12 n
    | n <= 1 = ('g', 6)
    | n <= 2 = ('h', 7)
stepState 13 n
    | n <= 1 = ('g', 6)
stepState 14 n
    | n <= 4 = ('g', 6)
    | n <= 6 = ('a', 1)
    | n <= 7 = ('h', 7)
stepState 15 n
    | n <= 1 = ('d', 3)
    | n <= 2 = ('k', 10)
stepState 16 n
    | n <= 3 = ('r', 14)
    | n <= 4 = ('a', 1)
    | n <= 5 = ('f', 5)
    | n <= 6 = ('j', 9)
    | n <= 7 = ('e', 4)
stepState _ _ = error "invalid state"

