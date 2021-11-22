module Deck where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.List (List(..), (:), concat, (..), length)
import Data.Show.Generic (genericShow)

import Card (Card(..), AllSettings(AllSettings))
import Setting (Setting(Setting))

{- | Defining the settings counts for ranks, suits, and card colors
   | defines what the total number of cards will be defined for the
   | card deck
-}
newtype DeckSize = DeckSize
  { rankSize :: Int
  , suitSize :: Int
  , colorSize :: Int
  }

derive instance Generic DeckSize _

instance Show DeckSize where
  show = genericShow

{- | Create a standard 52-card deck
-}
klondike :: List Card
klondike = deck
  ( DeckSize
      { rankSize: 13
      , suitSize: 2
      , colorSize: 2
      }
  )

{- | Create a small 20-card deck
-}
smallDeck :: List Card
smallDeck =
  deck
    ( DeckSize
        { rankSize: 5
        , suitSize: 2
        , colorSize: 2
        }
    )

{- | Generate a deck of cards consisting
   | of all permutations of rank, suit, and color
-}
deck :: DeckSize -> List Card
deck d =
  cards $ allSettings d

allSettings :: DeckSize -> AllSettings
allSettings (DeckSize d) =
  AllSettings
    { ranks: settingsFor d.rankSize
    , suits: settingsFor d.suitSize
    , colors: settingsFor d.colorSize
    }
  where
  setting top position = Setting { top, position }
  settingsFor size = map (setting size) (1 .. size)

{- | Specify the cards you will want the deck to have.  This
   | is accomplished by generating all combinations of rank,
   | colors, and suits per color.
   |
   | For example, for Klondike Solitaire you will want
   | the product of the number of ranks per suit (13), the number of
   | colors (2), and the number of suits per each color (2), which,
   | when multipled together, make 52 cards.
-}
cards :: AllSettings -> List Card
cards (AllSettings t) =
  concat $ cards' cardsCount
  where
  cards' _ = do
    suit <- t.suits
    color <- t.colors
    rank <- t.ranks
    pure (Card { rank: rank, color: color, suit: suit } : Nil)
  cardsCount = length (t.ranks) * length (t.colors) * length (t.suits)
