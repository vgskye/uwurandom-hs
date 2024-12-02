module Scrunkly where
import System.Random
generate :: RandomGen g => Int -> g -> ([Char], [g])
generate idx g = 
    let
        ((first, nextState), nextRand) = randState idx g
        (restStr, restRand) = generate nextState nextRand
    in (first : restStr, g : restRand)

randState :: RandomGen g => Int -> g -> ((Char, Int), g)
randState 0 g =
    let (idx, nextState) = uniformR (1, 1067) g
    in (stepState 0 idx, nextState)
randState 1 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 1 idx, nextState)
randState 2 g =
    let (idx, nextState) = uniformR (1, 147) g
    in (stepState 2 idx, nextState)
randState 3 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 3 idx, nextState)
randState 4 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 4 idx, nextState)
randState 5 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 5 idx, nextState)
randState 6 g =
    let (idx, nextState) = uniformR (1, 364) g
    in (stepState 6 idx, nextState)
randState 7 g =
    let (idx, nextState) = uniformR (1, 3) g
    in (stepState 7 idx, nextState)
randState 8 g =
    let (idx, nextState) = uniformR (1, 5) g
    in (stepState 8 idx, nextState)
randState 9 g =
    let (idx, nextState) = uniformR (1, 2) g
    in (stepState 9 idx, nextState)
randState 10 g =
    let (idx, nextState) = uniformR (1, 81) g
    in (stepState 10 idx, nextState)
randState 11 g =
    let (idx, nextState) = uniformR (1, 1271) g
    in (stepState 11 idx, nextState)
randState 12 g =
    let (idx, nextState) = uniformR (1, 478) g
    in (stepState 12 idx, nextState)
randState 13 g =
    let (idx, nextState) = uniformR (1, 19) g
    in (stepState 13 idx, nextState)
randState 14 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 14 idx, nextState)
randState 15 g =
    let (idx, nextState) = uniformR (1, 849) g
    in (stepState 15 idx, nextState)
randState 16 g =
    let (idx, nextState) = uniformR (1, 60) g
    in (stepState 16 idx, nextState)
randState 17 g =
    let (idx, nextState) = uniformR (1, 1585) g
    in (stepState 17 idx, nextState)
randState 18 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 18 idx, nextState)
randState 19 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 19 idx, nextState)
randState 20 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 20 idx, nextState)
randState 21 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 21 idx, nextState)
randState 22 g =
    let (idx, nextState) = uniformR (1, 18) g
    in (stepState 22 idx, nextState)
randState 23 g =
    let (idx, nextState) = uniformR (1, 95) g
    in (stepState 23 idx, nextState)
randState 24 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 24 idx, nextState)
randState 25 g =
    let (idx, nextState) = uniformR (1, 129) g
    in (stepState 25 idx, nextState)
randState 26 g =
    let (idx, nextState) = uniformR (1, 47) g
    in (stepState 26 idx, nextState)
randState 27 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 27 idx, nextState)
randState 28 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 28 idx, nextState)
randState 29 g =
    let (idx, nextState) = uniformR (1, 843) g
    in (stepState 29 idx, nextState)
randState 30 g =
    let (idx, nextState) = uniformR (1, 1271) g
    in (stepState 30 idx, nextState)
randState 31 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 31 idx, nextState)
randState 32 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 32 idx, nextState)
randState 33 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 33 idx, nextState)
randState 34 g =
    let (idx, nextState) = uniformR (1, 6) g
    in (stepState 34 idx, nextState)
randState 35 g =
    let (idx, nextState) = uniformR (1, 2) g
    in (stepState 35 idx, nextState)
randState 36 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 36 idx, nextState)
randState 37 g =
    let (idx, nextState) = uniformR (1, 500) g
    in (stepState 37 idx, nextState)
randState 38 g =
    let (idx, nextState) = uniformR (1, 50) g
    in (stepState 38 idx, nextState)
randState 39 g =
    let (idx, nextState) = uniformR (1, 33) g
    in (stepState 39 idx, nextState)
randState 40 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 40 idx, nextState)
randState 41 g =
    let (idx, nextState) = uniformR (1, 9) g
    in (stepState 41 idx, nextState)
randState 42 g =
    let (idx, nextState) = uniformR (1, 3) g
    in (stepState 42 idx, nextState)
randState 43 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 43 idx, nextState)
randState 44 g =
    let (idx, nextState) = uniformR (1, 3) g
    in (stepState 44 idx, nextState)
randState 45 g =
    let (idx, nextState) = uniformR (1, 9) g
    in (stepState 45 idx, nextState)
randState 46 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 46 idx, nextState)
randState 47 g =
    let (idx, nextState) = uniformR (1, 5) g
    in (stepState 47 idx, nextState)
randState 48 g =
    let (idx, nextState) = uniformR (1, 100) g
    in (stepState 48 idx, nextState)
randState 49 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 49 idx, nextState)
randState 50 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 50 idx, nextState)
randState 51 g =
    let (idx, nextState) = uniformR (1, 5) g
    in (stepState 51 idx, nextState)
randState 52 g =
    let (idx, nextState) = uniformR (1, 25) g
    in (stepState 52 idx, nextState)
randState 53 g =
    let (idx, nextState) = uniformR (1, 208) g
    in (stepState 53 idx, nextState)
randState 54 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 54 idx, nextState)
randState 55 g =
    let (idx, nextState) = uniformR (1, 101) g
    in (stepState 55 idx, nextState)
randState 56 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 56 idx, nextState)
randState 57 g =
    let (idx, nextState) = uniformR (1, 600) g
    in (stepState 57 idx, nextState)
randState 58 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 58 idx, nextState)
randState 59 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 59 idx, nextState)
randState 60 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 60 idx, nextState)
randState 61 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 61 idx, nextState)
randState 62 g =
    let (idx, nextState) = uniformR (1, 200) g
    in (stepState 62 idx, nextState)
randState 63 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 63 idx, nextState)
randState 64 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 64 idx, nextState)
randState 65 g =
    let (idx, nextState) = uniformR (1, 1600) g
    in (stepState 65 idx, nextState)
randState 66 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 66 idx, nextState)
randState 67 g =
    let (idx, nextState) = uniformR (1, 38) g
    in (stepState 67 idx, nextState)
randState 68 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 68 idx, nextState)
randState 69 g =
    let (idx, nextState) = uniformR (1, 25) g
    in (stepState 69 idx, nextState)
randState 70 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 70 idx, nextState)
randState 71 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 71 idx, nextState)
randState 72 g =
    let (idx, nextState) = uniformR (1, 500) g
    in (stepState 72 idx, nextState)
randState 73 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 73 idx, nextState)
randState 74 g =
    let (idx, nextState) = uniformR (1, 2) g
    in (stepState 74 idx, nextState)
randState 75 g =
    let (idx, nextState) = uniformR (1, 7) g
    in (stepState 75 idx, nextState)
randState 76 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 76 idx, nextState)
randState 77 g =
    let (idx, nextState) = uniformR (1, 1000) g
    in (stepState 77 idx, nextState)
randState 78 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 78 idx, nextState)
randState 79 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 79 idx, nextState)
randState 80 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 80 idx, nextState)
randState 81 g =
    let (idx, nextState) = uniformR (1, 4) g
    in (stepState 81 idx, nextState)
randState 82 g =
    let (idx, nextState) = uniformR (1, 7) g
    in (stepState 82 idx, nextState)
randState 83 g =
    let (idx, nextState) = uniformR (1, 100) g
    in (stepState 83 idx, nextState)
randState 84 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 84 idx, nextState)
randState 85 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 85 idx, nextState)
randState 86 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 86 idx, nextState)
randState 87 g =
    let (idx, nextState) = uniformR (1, 600) g
    in (stepState 87 idx, nextState)
randState 88 g =
    let (idx, nextState) = uniformR (1, 6) g
    in (stepState 88 idx, nextState)
randState 89 g =
    let (idx, nextState) = uniformR (1, 200) g
    in (stepState 89 idx, nextState)
randState 90 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 90 idx, nextState)
randState 91 g =
    let (idx, nextState) = uniformR (1, 500) g
    in (stepState 91 idx, nextState)
randState 92 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 92 idx, nextState)
randState 93 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 93 idx, nextState)
randState 94 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 94 idx, nextState)
randState 95 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 95 idx, nextState)
randState 96 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 96 idx, nextState)
randState 97 g =
    let (idx, nextState) = uniformR (1, 300) g
    in (stepState 97 idx, nextState)
randState 98 g =
    let (idx, nextState) = uniformR (1, 3) g
    in (stepState 98 idx, nextState)
randState 99 g =
    let (idx, nextState) = uniformR (1, 33) g
    in (stepState 99 idx, nextState)
randState 100 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 100 idx, nextState)
randState 101 g =
    let (idx, nextState) = uniformR (1, 36) g
    in (stepState 101 idx, nextState)
randState 102 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 102 idx, nextState)
randState 103 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 103 idx, nextState)
randState 104 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 104 idx, nextState)
randState 105 g =
    let (idx, nextState) = uniformR (1, 2) g
    in (stepState 105 idx, nextState)
randState 106 g =
    let (idx, nextState) = uniformR (1, 11) g
    in (stepState 106 idx, nextState)
randState 107 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 107 idx, nextState)
randState 108 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 108 idx, nextState)
randState 109 g =
    let (idx, nextState) = uniformR (1, 5) g
    in (stepState 109 idx, nextState)
randState 110 g =
    let (idx, nextState) = uniformR (1, 136) g
    in (stepState 110 idx, nextState)
randState 111 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 111 idx, nextState)
randState 112 g =
    let (idx, nextState) = uniformR (1, 141) g
    in (stepState 112 idx, nextState)
randState 113 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 113 idx, nextState)
randState 114 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 114 idx, nextState)
randState 115 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 115 idx, nextState)
randState 116 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 116 idx, nextState)
randState 117 g =
    let (idx, nextState) = uniformR (1, 900) g
    in (stepState 117 idx, nextState)
randState 118 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 118 idx, nextState)
randState 119 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 119 idx, nextState)
randState 120 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 120 idx, nextState)
randState 121 g =
    let (idx, nextState) = uniformR (1, 3) g
    in (stepState 121 idx, nextState)
randState 122 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 122 idx, nextState)
randState 123 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 123 idx, nextState)
randState 124 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 124 idx, nextState)
randState 125 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 125 idx, nextState)
randState 126 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 126 idx, nextState)
randState 127 g =
    let (idx, nextState) = uniformR (1, 200) g
    in (stepState 127 idx, nextState)
randState 128 g =
    let (idx, nextState) = uniformR (1, 2) g
    in (stepState 128 idx, nextState)
randState 129 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 129 idx, nextState)
randState 130 g =
    let (idx, nextState) = uniformR (1, 2) g
    in (stepState 130 idx, nextState)
randState 131 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 131 idx, nextState)
randState 132 g =
    let (idx, nextState) = uniformR (1, 11) g
    in (stepState 132 idx, nextState)
randState 133 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 133 idx, nextState)
randState 134 g =
    let (idx, nextState) = uniformR (1, 17) g
    in (stepState 134 idx, nextState)
randState 135 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 135 idx, nextState)
randState 136 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 136 idx, nextState)
randState 137 g =
    let (idx, nextState) = uniformR (1, 3) g
    in (stepState 137 idx, nextState)
randState 138 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 138 idx, nextState)
randState 139 g =
    let (idx, nextState) = uniformR (1, 3) g
    in (stepState 139 idx, nextState)
randState 140 g =
    let (idx, nextState) = uniformR (1, 3) g
    in (stepState 140 idx, nextState)
randState 141 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 141 idx, nextState)
randState 142 g =
    let (idx, nextState) = uniformR (1, 400) g
    in (stepState 142 idx, nextState)
randState 143 g =
    let (idx, nextState) = uniformR (1, 6) g
    in (stepState 143 idx, nextState)
randState 144 g =
    let (idx, nextState) = uniformR (1, 122) g
    in (stepState 144 idx, nextState)
randState 145 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 145 idx, nextState)
randState 146 g =
    let (idx, nextState) = uniformR (1, 144) g
    in (stepState 146 idx, nextState)
randState 147 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 147 idx, nextState)
randState 148 g =
    let (idx, nextState) = uniformR (1, 300) g
    in (stepState 148 idx, nextState)
randState 149 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 149 idx, nextState)
randState 150 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 150 idx, nextState)
randState 151 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 151 idx, nextState)
randState 152 g =
    let (idx, nextState) = uniformR (1, 4) g
    in (stepState 152 idx, nextState)
randState 153 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 153 idx, nextState)
randState 154 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 154 idx, nextState)
randState 155 g =
    let (idx, nextState) = uniformR (1, 200) g
    in (stepState 155 idx, nextState)
randState 156 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 156 idx, nextState)
randState 157 g =
    let (idx, nextState) = uniformR (1, 8) g
    in (stepState 157 idx, nextState)
randState 158 g =
    let (idx, nextState) = uniformR (1, 100) g
    in (stepState 158 idx, nextState)
randState 159 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 159 idx, nextState)
randState 160 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 160 idx, nextState)
randState 161 g =
    let (idx, nextState) = uniformR (1, 6) g
    in (stepState 161 idx, nextState)
randState 162 g =
    let (idx, nextState) = uniformR (1, 43) g
    in (stepState 162 idx, nextState)
randState 163 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 163 idx, nextState)
randState 164 g =
    let (idx, nextState) = uniformR (1, 5) g
    in (stepState 164 idx, nextState)
randState 165 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 165 idx, nextState)
randState 166 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 166 idx, nextState)
randState 167 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 167 idx, nextState)
randState 168 g =
    let (idx, nextState) = uniformR (1, 5) g
    in (stepState 168 idx, nextState)
randState 169 g =
    let (idx, nextState) = uniformR (1, 10) g
    in (stepState 169 idx, nextState)
randState 170 g =
    let (idx, nextState) = uniformR (1, 7) g
    in (stepState 170 idx, nextState)
randState 171 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 171 idx, nextState)
randState 172 g =
    let (idx, nextState) = uniformR (1, 65) g
    in (stepState 172 idx, nextState)
randState 173 g =
    let (idx, nextState) = uniformR (1, 1) g
    in (stepState 173 idx, nextState)
randState _ _ = error "invalid state"

stepState :: Int -> Int -> (Char, Int)
stepState 0 n
    | n <= 500 = ('n', 34)
    | n <= 867 = ('w', 37)
    | n <= 1067 = ('d', 31)
stepState 1 n
    | n <= 1 = ('o', 43)
stepState 2 n
    | n <= 60 = ('u', 46)
    | n <= 107 = ('r', 45)
    | n <= 147 = ('a', 44)
stepState 3 n
    | n <= 1 = ('o', 51)
stepState 4 n
    | n <= 1 = ('l', 61)
stepState 5 n
    | n <= 1 = ('a', 64)
stepState 6 n
    | n <= 200 = ('t', 77)
    | n <= 300 = ('c', 70)
    | n <= 325 = (',', 68)
    | n <= 349 = ('!', 67)
    | n <= 364 = ('.', 69)
stepState 7 n
    | n <= 2 = ('i', 81)
    | n <= 3 = ('d', 79)
stepState 8 n
    | n <= 4 = ('i', 88)
    | n <= 5 = ('o', 89)
stepState 9 n
    | n <= 1 = ('i', 95)
    | n <= 2 = ('e', 94)
stepState 10 n
    | n <= 50 = ('o', 107)
    | n <= 81 = (' ', 98)
stepState 11 n
    | n <= 535 = ('c', 135)
    | n <= 835 = ('p', 140)
    | n <= 1100 = ('o', 139)
    | n <= 1200 = ('m', 138)
    | n <= 1271 = ('h', 136)
stepState 12 n
    | n <= 262 = ('h', 149)
    | n <= 362 = ('o', 152)
    | n <= 453 = ('i', 150)
    | n <= 478 = ('a', 147)
stepState 13 n
    | n <= 11 = ('h', 165)
    | n <= 19 = ('i', 166)
stepState 14 n
    | n <= 1 = ('a', 173)
stepState 15 n
    | n <= 190 = ('t', 12)
    | n <= 326 = ('a', 0)
    | n <= 454 = ('s', 11)
    | n <= 572 = ('l', 8)
    | n <= 646 = ('c', 2)
    | n <= 684 = ('y', 14)
    | n <= 722 = ('h', 5)
    | n <= 757 = ('w', 13)
    | n <= 790 = ('b', 1)
    | n <= 821 = ('n', 10)
    | n <= 849 = ('i', 6)
stepState 16 n
    | n <= 31 = (' ', 15)
    | n <= 60 = ('!', 16)
stepState 17 n
    | n <= 777 = (',', 17)
    | n <= 965 = ('t', 26)
    | n <= 1098 = ('a', 18)
    | n <= 1227 = ('s', 25)
    | n <= 1322 = ('l', 23)
    | n <= 1387 = ('c', 20)
    | n <= 1425 = ('n', 24)
    | n <= 1462 = ('y', 28)
    | n <= 1498 = ('i', 22)
    | n <= 1531 = ('b', 19)
    | n <= 1560 = ('h', 21)
    | n <= 1585 = ('w', 27)
stepState 18 n
    | n <= 1 = ('w', 37)
stepState 19 n
    | n <= 1 = ('o', 43)
stepState 20 n
    | n <= 1 = ('r', 45)
stepState 21 n
    | n <= 1 = ('a', 64)
stepState 22 n
    | n <= 7 = ('!', 67)
    | n <= 13 = (',', 68)
    | n <= 18 = ('.', 69)
stepState 23 n
    | n <= 59 = ('o', 89)
    | n <= 95 = ('i', 88)
stepState 24 n
    | n <= 1 = (' ', 98)
stepState 25 n
    | n <= 65 = ('c', 135)
    | n <= 100 = ('o', 139)
    | n <= 129 = ('h', 136)
stepState 26 n
    | n <= 38 = ('h', 149)
    | n <= 47 = ('i', 150)
stepState 27 n
    | n <= 1 = ('h', 165)
stepState 28 n
    | n <= 1 = ('a', 173)
stepState 29 n
    | n <= 222 = ('t', 12)
    | n <= 365 = ('s', 11)
    | n <= 496 = ('a', 0)
    | n <= 583 = ('l', 8)
    | n <= 644 = ('c', 2)
    | n <= 684 = ('w', 13)
    | n <= 720 = ('i', 6)
    | n <= 754 = ('b', 1)
    | n <= 787 = ('h', 5)
    | n <= 818 = ('n', 10)
    | n <= 843 = ('y', 14)
stepState 30 n
    | n <= 638 = (' ', 29)
    | n <= 1271 = ('.', 30)
stepState 31 n
    | n <= 1 = ('o', 51)
stepState 32 n
    | n <= 1 = ('e', 87)
stepState 33 n
    | n <= 1 = ('t', 97)
stepState 34 n
    | n <= 5 = ('d', 103)
    | n <= 6 = (' ', 98)
stepState 35 n
    | n <= 1 = (' ', 122)
    | n <= 2 = ('p', 123)
stepState 36 n
    | n <= 1 = (' ', 143)
stepState 37 n
    | n <= 300 = ('w', 168)
    | n <= 400 = (' ', 161)
    | n <= 443 = ('!', 162)
    | n <= 473 = ('.', 164)
    | n <= 500 = (',', 163)
stepState 38 n
    | n <= 17 = ('!', 170)
    | n <= 34 = ('.', 172)
    | n <= 50 = (',', 171)
stepState 39 n
    | n <= 29 = ('!', 16)
    | n <= 33 = (' ', 15)
stepState 40 n
    | n <= 1 = (',', 17)
stepState 41 n
    | n <= 7 = ('.', 30)
    | n <= 9 = (' ', 29)
stepState 42 n
    | n <= 2 = ('o', 89)
    | n <= 3 = ('e', 87)
stepState 43 n
    | n <= 1 = ('i', 113)
stepState 44 n
    | n <= 1 = ('n', 34)
    | n <= 2 = ('m', 33)
    | n <= 3 = ('t', 36)
stepState 45 n
    | n <= 5 = ('u', 131)
    | n <= 9 = ('i', 128)
stepState 46 n
    | n <= 1 = ('t', 159)
stepState 47 n
    | n <= 2 = ('c', 2)
    | n <= 3 = ('d', 3)
    | n <= 4 = ('i', 6)
    | n <= 5 = ('s', 11)
stepState 48 n
    | n <= 36 = ('.', 41)
    | n <= 69 = ('!', 39)
    | n <= 100 = (',', 40)
stepState 49 n
    | n <= 1 = ('l', 50)
stepState 50 n
    | n <= 1 = ('e', 87)
stepState 51 n
    | n <= 2 = ('r', 118)
    | n <= 4 = ('o', 117)
    | n <= 5 = ('u', 120)
stepState 52 n
    | n <= 6 = ('t', 12)
    | n <= 10 = ('s', 11)
    | n <= 13 = ('l', 8)
    | n <= 16 = ('c', 2)
    | n <= 18 = ('a', 0)
    | n <= 20 = ('w', 13)
    | n <= 22 = ('b', 1)
    | n <= 24 = ('k', 7)
    | n <= 25 = ('m', 9)
stepState 53 n
    | n <= 157 = ('!', 16)
    | n <= 208 = (' ', 15)
stepState 54 n
    | n <= 1 = (',', 17)
stepState 55 n
    | n <= 80 = ('.', 30)
    | n <= 101 = (' ', 29)
stepState 56 n
    | n <= 1 = (' ', 92)
stepState 57 n
    | n <= 400 = ('p', 108)
    | n <= 500 = (' ', 98)
    | n <= 536 = ('.', 101)
    | n <= 569 = ('!', 99)
    | n <= 600 = (',', 100)
stepState 58 n
    | n <= 1 = ('w', 121)
stepState 59 n
    | n <= 1 = ('t', 141)
stepState 60 n
    | n <= 1 = ('a', 0)
stepState 61 n
    | n <= 1 = ('u', 90)
stepState 62 n
    | n <= 74 = ('!', 53)
    | n <= 139 = (',', 54)
    | n <= 200 = ('.', 55)
stepState 63 n
    | n <= 1 = ('e', 87)
stepState 64 n
    | n <= 1 = ('p', 35)
stepState 65 n
    | n <= 1200 = (' ', 52)
    | n <= 1400 = ('n', 57)
    | n <= 1500 = ('m', 56)
    | n <= 1537 = ('!', 53)
    | n <= 1569 = (',', 54)
    | n <= 1600 = ('.', 55)
stepState 66 n
    | n <= 1 = ('o', 130)
stepState 67 n
    | n <= 25 = ('!', 16)
    | n <= 38 = (' ', 15)
stepState 68 n
    | n <= 1 = (',', 17)
stepState 69 n
    | n <= 17 = ('.', 30)
    | n <= 25 = (' ', 29)
stepState 70 n
    | n <= 1 = ('a', 44)
stepState 71 n
    | n <= 1 = ('d', 49)
stepState 72 n
    | n <= 400 = ('n', 57)
    | n <= 443 = ('.', 55)
    | n <= 479 = (',', 54)
    | n <= 500 = ('!', 53)
stepState 73 n
    | n <= 1 = ('e', 80)
stepState 74 n
    | n <= 1 = ('b', 93)
    | n <= 2 = ('t', 97)
stepState 75 n
    | n <= 6 = ('k', 106)
    | n <= 7 = ('g', 105)
stepState 76 n
    | n <= 1 = ('y', 127)
stepState 77 n
    | n <= 300 = ('t', 154)
    | n <= 600 = (' ', 143)
    | n <= 706 = ('.', 146)
    | n <= 806 = ('y', 155)
    | n <= 905 = (',', 145)
    | n <= 1000 = ('!', 144)
stepState 78 n
    | n <= 1 = ('e', 160)
stepState 79 n
    | n <= 1 = ('b', 48)
stepState 80 n
    | n <= 1 = (' ', 52)
stepState 81 n
    | n <= 3 = ('t', 77)
    | n <= 4 = ('m', 74)
stepState 82 n
    | n <= 6 = ('y', 91)
    | n <= 7 = ('e', 87)
stepState 83 n
    | n <= 39 = ('.', 112)
    | n <= 72 = ('!', 110)
    | n <= 100 = (',', 111)
stepState 84 n
    | n <= 1 = ('s', 158)
stepState 85 n
    | n <= 1 = (' ', 169)
stepState 86 n
    | n <= 1 = ('s', 11)
stepState 87 n
    | n <= 550 = (' ', 52)
    | n <= 569 = ('!', 53)
    | n <= 586 = ('.', 55)
    | n <= 600 = (',', 54)
stepState 88 n
    | n <= 3 = ('t', 77)
    | n <= 4 = ('k', 73)
    | n <= 5 = ('v', 78)
    | n <= 6 = ('m', 74)
stepState 89 n
    | n <= 100 = ('o', 117)
    | n <= 150 = (' ', 109)
    | n <= 169 = ('!', 110)
    | n <= 187 = (',', 111)
    | n <= 200 = ('.', 112)
stepState 90 n
    | n <= 1 = ('n', 157)
stepState 91 n
    | n <= 300 = (' ', 169)
    | n <= 373 = ('!', 170)
    | n <= 439 = ('.', 172)
    | n <= 500 = (',', 171)
stepState 92 n
    | n <= 1 = ('t', 12)
stepState 93 n
    | n <= 1 = ('l', 42)
stepState 94 n
    | n <= 1 = ('o', 58)
stepState 95 n
    | n <= 1 = ('p', 76)
stepState 96 n
    | n <= 1 = ('l', 115)
stepState 97 n
    | n <= 100 = ('l', 151)
    | n <= 200 = ('y', 155)
    | n <= 238 = ('.', 146)
    | n <= 273 = (',', 145)
    | n <= 300 = ('!', 144)
stepState 98 n
    | n <= 2 = ('t', 12)
    | n <= 3 = ('f', 4)
stepState 99 n
    | n <= 26 = ('!', 16)
    | n <= 33 = (' ', 15)
stepState 100 n
    | n <= 1 = (',', 17)
stepState 101 n
    | n <= 25 = ('.', 30)
    | n <= 36 = (' ', 29)
stepState 102 n
    | n <= 1 = ('l', 32)
stepState 103 n
    | n <= 1 = (' ', 47)
stepState 104 n
    | n <= 1 = (' ', 60)
stepState 105 n
    | n <= 1 = ('e', 62)
    | n <= 2 = ('l', 63)
stepState 106 n
    | n <= 7 = ('l', 82)
    | n <= 9 = ('y', 85)
    | n <= 10 = ('u', 84)
    | n <= 11 = ('o', 83)
stepState 107 n
    | n <= 1 = ('w', 121)
stepState 108 n
    | n <= 1 = ('s', 125)
stepState 109 n
    | n <= 1 = ('a', 0)
    | n <= 2 = ('i', 6)
    | n <= 3 = ('l', 8)
    | n <= 4 = ('b', 1)
    | n <= 5 = ('m', 9)
stepState 110 n
    | n <= 105 = ('!', 16)
    | n <= 136 = (' ', 15)
stepState 111 n
    | n <= 1 = (',', 17)
stepState 112 n
    | n <= 104 = ('.', 30)
    | n <= 141 = (' ', 29)
stepState 113 n
    | n <= 1 = ('n', 75)
stepState 114 n
    | n <= 1 = ('i', 81)
stepState 115 n
    | n <= 1 = (' ', 86)
stepState 116 n
    | n <= 1 = ('k', 106)
stepState 117 n
    | n <= 300 = ('t', 119)
    | n <= 500 = ('k', 114)
    | n <= 600 = ('o', 117)
    | n <= 700 = (' ', 109)
    | n <= 776 = ('.', 112)
    | n <= 841 = ('!', 110)
    | n <= 900 = (',', 111)
stepState 118 n
    | n <= 1 = ('n', 129)
stepState 119 n
    | n <= 1 = ('s', 153)
stepState 120 n
    | n <= 1 = ('b', 156)
stepState 121 n
    | n <= 2 = (' ', 161)
    | n <= 3 = ('m', 167)
stepState 122 n
    | n <= 1 = ('n', 10)
stepState 123 n
    | n <= 1 = ('y', 127)
stepState 124 n
    | n <= 1 = ('o', 130)
stepState 125 n
    | n <= 1 = ('y', 142)
stepState 126 n
    | n <= 1 = ('n', 157)
stepState 127 n
    | n <= 100 = (' ', 169)
    | n <= 141 = ('!', 170)
    | n <= 177 = (',', 171)
    | n <= 200 = ('.', 172)
stepState 128 n
    | n <= 1 = ('n', 75)
    | n <= 2 = ('m', 74)
stepState 129 n
    | n <= 1 = ('a', 102)
stepState 130 n
    | n <= 1 = ('n', 116)
    | n <= 2 = ('i', 113)
stepState 131 n
    | n <= 1 = ('n', 157)
stepState 132 n
    | n <= 8 = ('!', 16)
    | n <= 11 = (' ', 15)
stepState 133 n
    | n <= 1 = (',', 17)
stepState 134 n
    | n <= 13 = ('.', 30)
    | n <= 17 = (' ', 29)
stepState 135 n
    | n <= 1 = ('r', 45)
stepState 136 n
    | n <= 1 = ('r', 66)
stepState 137 n
    | n <= 2 = ('t', 77)
    | n <= 3 = ('e', 72)
stepState 138 n
    | n <= 1 = ('o', 96)
stepState 139 n
    | n <= 2 = (' ', 109)
    | n <= 3 = ('o', 117)
stepState 140 n
    | n <= 2 = ('u', 126)
    | n <= 3 = ('r', 124)
stepState 141 n
    | n <= 1 = (' ', 143)
stepState 142 n
    | n <= 300 = (' ', 169)
    | n <= 341 = ('.', 172)
    | n <= 376 = (',', 171)
    | n <= 400 = ('!', 170)
stepState 143 n
    | n <= 2 = ('t', 12)
    | n <= 4 = ('a', 0)
    | n <= 5 = ('c', 2)
    | n <= 6 = ('s', 11)
stepState 144 n
    | n <= 85 = ('!', 16)
    | n <= 122 = (' ', 15)
stepState 145 n
    | n <= 1 = (',', 17)
stepState 146 n
    | n <= 101 = ('.', 30)
    | n <= 144 = (' ', 29)
stepState 147 n
    | n <= 1 = ('p', 35)
stepState 148 n
    | n <= 200 = ('s', 59)
    | n <= 238 = ('!', 53)
    | n <= 271 = ('.', 55)
    | n <= 300 = (',', 54)
stepState 149 n
    | n <= 1 = ('e', 65)
stepState 150 n
    | n <= 1 = ('e', 72)
stepState 151 n
    | n <= 1 = ('e', 87)
stepState 152 n
    | n <= 3 = ('o', 117)
    | n <= 4 = (' ', 109)
stepState 153 n
    | n <= 1 = ('i', 137)
stepState 154 n
    | n <= 1 = ('l', 151)
stepState 155 n
    | n <= 100 = (' ', 169)
    | n <= 138 = (',', 171)
    | n <= 169 = ('!', 170)
    | n <= 200 = ('.', 172)
stepState 156 n
    | n <= 1 = ('l', 42)
stepState 157 n
    | n <= 4 = ('k', 106)
    | n <= 7 = ('g', 105)
    | n <= 8 = ('f', 104)
stepState 158 n
    | n <= 34 = ('.', 134)
    | n <= 67 = ('!', 132)
    | n <= 100 = (',', 133)
stepState 159 n
    | n <= 1 = ('e', 148)
stepState 160 n
    | n <= 1 = (' ', 52)
stepState 161 n
    | n <= 2 = ('t', 12)
    | n <= 3 = ('l', 8)
    | n <= 4 = ('s', 11)
    | n <= 5 = ('w', 13)
    | n <= 6 = ('i', 6)
stepState 162 n
    | n <= 24 = ('!', 16)
    | n <= 43 = (' ', 15)
stepState 163 n
    | n <= 1 = (',', 17)
stepState 164 n
    | n <= 4 = ('.', 30)
    | n <= 5 = (' ', 29)
stepState 165 n
    | n <= 1 = ('e', 65)
stepState 166 n
    | n <= 1 = ('d', 71)
stepState 167 n
    | n <= 1 = ('e', 94)
stepState 168 n
    | n <= 3 = (' ', 161)
    | n <= 5 = ('w', 168)
stepState 169 n
    | n <= 2 = ('t', 12)
    | n <= 4 = ('s', 11)
    | n <= 6 = ('d', 3)
    | n <= 8 = ('a', 0)
    | n <= 9 = ('k', 7)
    | n <= 10 = ('w', 13)
stepState 170 n
    | n <= 5 = ('!', 16)
    | n <= 7 = (' ', 15)
stepState 171 n
    | n <= 1 = (',', 17)
stepState 172 n
    | n <= 51 = ('.', 30)
    | n <= 65 = (' ', 29)
stepState 173 n
    | n <= 1 = ('y', 38)
stepState _ _ = error "invalid state"

