module Card where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.List (List(..), (:), concat, (..), length)
import Data.Show.Generic (genericShow)

import Setting (Setting)

newtype AllSettings = AllSettings
  { ranks :: List Setting
  , suits :: List Setting
  , colors :: List Setting
  }

derive instance Generic AllSettings _

instance Show AllSettings where
  show = genericShow

{- | Each card has a rank that is a member of the set of ranks
   | which is set by the game setup.  Klondike's
   | use of Ace, Jack, Queen, and King are just symbolic renamings
   | of 1, 11, 12, and 13 respectively; internally the game logic
   | doesn't care.
   |
   | Although Solitaire uses the symbols
   | club, diamond, heart, and spade, internally
   | the game simply wants unique values.  Ideally, these
   | would be expressed as enumerations, but we want to
   | be able to invent variations of the game, including
   | varying the number of suits.  Now that we care about
   | the number of suits, it is better to express them as
   | integers internally and only be concerned about symbols
   | when rendering the cards.
   |
   | It is also important to note that suits are defined
   | for one color at a time; hence in this implementation
   | the suit quantities for Klondike are specified as
   | 2 for black (club and spade) and 2 for red (diamond
   | and heart). There are two card colors, black and red.
   | Again, how the color looks is irrelevant to the
   | internal game logic; it just wants to know about
   | how many colors there are and assign unique values to them.
   |
   | The card's rank, color, and suit are accessible
   | via a record
-}
newtype Card = Card { rank :: Setting, color :: Setting, suit :: Setting }

derive instance Generic Card _
instance Show Card where
  show = genericShow
