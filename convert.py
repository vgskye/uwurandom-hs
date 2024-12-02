import sys
import json

a = ""
b = ""

with open(sys.argv[1]) as f:
    parsed = json.load(f)
    for idx, ngram in enumerate(parsed):
        totalProbability = ngram["totalProbability"]
        a += f"""randState {idx} g =
    let (idx, nextState) = uniformR (1, {totalProbability}) g
    in (stepState {idx} idx, nextState)
"""
        b += f"stepState {idx} n\n"
        last = 0
        for choice in ngram["choices"]:
            cumulativeProbability = choice["cumulativeProbability"]
            nextNgram = choice["nextNgram"]
            nextChar = choice["nextChar"]
            b += f"    | n <= {cumulativeProbability} = ('{nextChar}', {nextNgram})\n"

print(f"""module {sys.argv[2]} where
import System.Random
generate :: RandomGen g => Int -> g -> ([Char], [g])
generate idx g = 
    let
        ((first, nextState), nextRand) = randState idx g
        (restStr, restRand) = generate nextState nextRand
    in (first : restStr, g : restRand)

randState :: RandomGen g => Int -> g -> ((Char, Int), g)
{a}randState _ _ = error "invalid state"

stepState :: Int -> Int -> (Char, Int)
{b}stepState _ _ = error "invalid state"
""")