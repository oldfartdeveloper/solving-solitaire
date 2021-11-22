module Tableau where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.List (List)
import Data.Show.Generic (genericShow)

import Pile (Pile)

-- import Card (Card)

{- | A tableau is created with of piles, each one with a
   | proposed size.
-}
newtype Tableau = Tableau (List Pile)

derive instance Generic Tableau _
instance Show Tableau where
  show = genericShow

-- createTableau :: Tableau -> Tableau

-- getPileCount :: Tableau -> Int
-- getPileCount tableau = length tableau.piles

-- {- | This is provided at the start of the game
--    | to provide guidance on whether the game is too
--    | complex
-- -}
-- getNonEmptyPileCount :: Tableau -> Int
-- getNonEmptyPileCount tableau = filter (\pile -> notEmpty) (getPileCount tableau)

-- notEmpty :: Pile -> Boolean
-- -- notEmpty pile = not (pile.locked null || pile.playable null)
-- notEmpty pile = true
