module Game where

-- import Prelude

import Data.List (List)

import Card (Card)
import Foundation (Foundation)
import Tableau (Tableau)
import Waste (Waste)

newtype Game = Game
  { foundation :: Foundation
  , tableau :: Tableau
  , waste :: Waste
  }

-- newGame :: Card -> Either ErrorCode Game
-- newGame params = cards params

-- useful for generating different game shapes
-- experimentallydebugGame :: DeckSize -> List Card

newtype CreateTableau =
  CreateTableau { initialPilesSizes :: List Int -- A series of initial pile sizes
                , cards :: List Card -- Since the intended intended pile sizes can
                                    -- be created by filling them with cards as
                                    -- available, the cards must be provided.
                }

-- createTableau :: CreateTableau -> Tableau
-- createTableau (CreateTableau c) =
--   let
--     piles = foldl generatePiles c.
--   in
