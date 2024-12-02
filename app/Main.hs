module Main where
import System.Random
import qualified Data.Text.Lazy as L
import qualified Data.Text.Lazy.IO as LIO
import qualified CatgirlNonsense as CN
import qualified Keysmash as K
import qualified Scrunkly as S
data UwurandomOp =
    Uwu |
    ColonThree |
    Owo |
    Nya |
    Blush |
    Action |
    Aaaaa |
    CatgirlNonsense |
    Keymash |
    Scrunkly
    deriving (Eq,Ord,Enum,Show,Bounded)

genOp :: RandomGen g => UwurandomOp -> g -> (L.Text, g)
genOp Uwu g = (L.pack "uwu ", g)
genOp ColonThree g = (L.pack ":3 ", g)
genOp Owo g = (L.pack "owo ", g)
genOp Nya g = let
    (count, nextRandom) = uniformR (1, 6) g
    in (L.concat [L.pack "ny", L.take count (L.repeat 'a'), L.pack " "], nextRandom)
genOp Blush g = let
    (count, nextRandom) = uniformR (3, 6) g
    in (L.concat [L.pack ">", L.take count (L.repeat '/'), L.pack "< "], nextRandom)
genOp Action g =
    let actions = [
            "*tilts head* ",
            "*twitches ears slightly* ",
            "*purrs* ",
            "*falls asleep* ",
            "*sits on ur keyboard* ",
            "*nuzzles* ",
            "*stares at u* ",
            "*points towards case of monster zero ultra* ",
            "*sneezes* ",
            "*plays with yarn* ",
            "*eats all ur doritos* ",
            "*lies down on a random surface* "
            ]
        (count, nextRandom) = uniformR (0, length actions - 1) g
    in (L.pack (actions !! count), nextRandom)
genOp Aaaaa g = let
    (count, nextRandom) = uniformR (5, 16) g
    in (L.concat [L.take count (L.repeat 'A'), L.pack " "], nextRandom)
genOp CatgirlNonsense g = let
    (count, nextRandom) = uniformR (25, 149) g
    (generated, nextRandoms) = CN.generate 7 nextRandom
    in (L.concat (map L.pack ["mr", take count generated, "nya "]), nextRandoms !! count)
genOp Keymash g = let
    (count, nextRandom) = uniformR (25, 149) g
    (initState, nextNextRandom) = uniformR (0, 16) nextRandom
    (generated, nextRandoms) = K.generate initState nextNextRandom
    in (L.concat (map L.pack [take count generated, " "]), nextRandoms !! count)
genOp Scrunkly g = let
    (count, nextRandom) = uniformR (25, 99) g
    (initState, nextNextRandom) = uniformR (0, 173) nextRandom
    (generated, nextRandoms) = S.generate initState nextNextRandom
    in (L.concat (map L.pack [take count generated, " "]), nextRandoms !! count)

uniformEnum :: RandomGen g => g -> (UwurandomOp, g)
uniformEnum g = let
    (idx, nextRandom) = uniformR (fromEnum (minBound :: UwurandomOp), fromEnum (maxBound :: UwurandomOp)) g
    in (toEnum idx, nextRandom)

uniformEnumExcept :: RandomGen g => UwurandomOp -> g -> (UwurandomOp, g)
uniformEnumExcept excl g = let
    (tried, nextRand) = uniformEnum g
    in
    if tried == excl
        then uniformEnumExcept excl nextRand
        else (tried, nextRand)

generate :: RandomGen g => UwurandomOp -> g -> L.Text
generate state g = let
    (first, nextRand) = genOp state g
    (nextState, nextNextRand) = uniformEnumExcept state nextRand
    rest = generate nextState nextNextRand
    in L.append first rest

main :: IO ()
main = do
   gen <- newStdGen
   let (initState, newGen) = uniformEnum gen
   let generated = generate initState newGen
   LIO.putStr generated