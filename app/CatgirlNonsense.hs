module CatgirlNonsense where
import System.Random
generate :: RandomGen g => Int -> g -> ([Char], [g])
generate idx g = 
    let
        ((first, nextState), nextRand) = randState idx g
        (restStr, restRand) = generate nextState nextRand
    in (first : restStr, g : restRand)

randState :: RandomGen g => Int -> g -> ((Char, Int), g)
randState 0 g =
    let (idx, nextState) = uniformR (1, 3) g
    in (stepState 0 idx, nextState)
randState 1 g =
    let (idx, nextState) = uniformR (1, 4) g
    in (stepState 1 idx, nextState)
randState 2 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 2 idx, nextState)
randState 3 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 3 idx, nextState)
randState 4 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 4 idx, nextState)
randState 5 g =
    let (idx, nextState) = uniformR (1, 8) g
    in (stepState 5 idx, nextState)
randState 6 g =
    let (idx, nextState) = uniformR (1, 5) g
    in (stepState 6 idx, nextState)
randState 7 g =
    let (idx, nextState) = uniformR (1, 30) g
    in (stepState 7 idx, nextState)
randState 8 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 8 idx, nextState)
randState 9 g =
    let (idx, nextState) = uniformR (1, 38) g
    in (stepState 9 idx, nextState)
randState 10 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 10 idx, nextState)
randState 11 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 11 idx, nextState)
randState 12 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 12 idx, nextState)
randState 13 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 13 idx, nextState)
randState 14 g =
    let (idx, nextState) = uniformR (1, 2) g
    in (stepState 14 idx, nextState)
randState 15 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 15 idx, nextState)
randState 16 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 16 idx, nextState)
randState 17 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 17 idx, nextState)
randState 18 g =
    let (idx, nextState) = uniformR (1, 14) g
    in (stepState 18 idx, nextState)
randState 19 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 19 idx, nextState)
randState 20 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 20 idx, nextState)
randState 21 g =
    let (idx, nextState) = uniformR (1, 30) g
    in (stepState 21 idx, nextState)
randState 22 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 22 idx, nextState)
randState 23 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 23 idx, nextState)
randState 24 g =
    let (idx, nextState) = uniformR (1, 10) g
    in (stepState 24 idx, nextState)
randState 25 g =
    let (idx, nextState) = uniformR (1, 4) g
    in (stepState 25 idx, nextState)
randState 26 g =
    let (idx, nextState) = uniformR (1, 6) g
    in (stepState 26 idx, nextState)
randState _ _ = error "invalid state"

stepState :: Int -> Int -> (Char, Int)
stepState 0 n
    | n <= 2 = ('a', 0)
    | n <= 3 = ('m', 1)
stepState 1 n
    | n <= 3 = ('r', 7)
    | n <= 4 = ('e', 6)
stepState 2 n
    | n <= 1 = ('y', 8)
stepState 3 n
    | n <= 1 = ('w', 9)
stepState 4 n
    | n <= 1 = ('w', 9)
stepState 5 n
    | n <= 6 = ('m', 21)
    | n <= 7 = ('n', 22)
    | n <= 8 = ('p', 23)
stepState 6 n
    | n <= 3 = ('o', 4)
    | n <= 5 = ('w', 5)
stepState 7 n
    | n <= 15 = ('o', 16)
    | n <= 24 = ('a', 12)
    | n <= 28 = ('r', 18)
    | n <= 29 = ('w', 19)
    | n <= 30 = ('e', 13)
stepState 8 n
    | n <= 1 = ('a', 26)
stepState 9 n
    | n <= 22 = ('m', 21)
    | n <= 32 = ('r', 24)
    | n <= 36 = ('n', 22)
    | n <= 37 = ('w', 25)
    | n <= 38 = ('p', 23)
stepState 10 n
    | n <= 1 = ('u', 11)
stepState 11 n
    | n <= 1 = ('r', 20)
stepState 12 n
    | n <= 1 = ('o', 3)
stepState 13 n
    | n <= 1 = ('o', 4)
stepState 14 n
    | n <= 1 = ('r', 7)
    | n <= 2 = ('e', 6)
stepState 15 n
    | n <= 1 = ('y', 8)
stepState 16 n
    | n <= 1 = ('w', 9)
stepState 17 n
    | n <= 1 = ('p', 10)
stepState 18 n
    | n <= 7 = ('r', 18)
    | n <= 10 = ('m', 14)
    | n <= 13 = ('o', 16)
    | n <= 14 = ('p', 17)
stepState 19 n
    | n <= 1 = ('m', 21)
stepState 20 n
    | n <= 1 = ('r', 18)
stepState 21 n
    | n <= 17 = ('r', 7)
    | n <= 30 = ('e', 6)
stepState 22 n
    | n <= 1 = ('y', 8)
stepState 23 n
    | n <= 1 = ('u', 11)
stepState 24 n
    | n <= 7 = ('m', 14)
    | n <= 10 = ('n', 15)
stepState 25 n
    | n <= 3 = ('w', 25)
    | n <= 4 = ('m', 21)
stepState 26 n
    | n <= 4 = ('a', 0)
    | n <= 5 = ('n', 2)
    | n <= 6 = ('m', 1)
stepState _ _ = error "invalid state"

