{- | Implementing constraints to limit:
   | 
   | * Time to play game.
   | * Uninteresting complexities
   | * Having more columns (piles) in the tableau than would be useful; the excess
   |   would never be played.
-}
module Constraints where

import Prelude

maxRanks :: Int
maxRanks = 13

{- | Since this is about researching play tactics, making more than
   | this number of colors is uninteresting and hence needlessy
   | (and substantially) increases time to play game.
-}
maxColors :: Int
maxColors = 3

{- | Since this is about researching play tactics, making more than
   | this number of suits per color is uninteresting and hence needlessy
   | (and substantially) increases time to play game.
-}
maxSuitsPerColor :: Int
maxSuitsPerColor = 3

{- | There is no need to have more than the number of proposed
   | non-empty piles plus additional empty piles where kings can be
   | moved to start populating a new suit.
-}
maxPiles :: Int -> Int
maxPiles proposedNonEmptyPileCount = 
  proposedNonEmptyPileCount + (maxColors * maxSuitsPerColor)



