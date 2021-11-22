module Pile where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.List (List(..), (:), concat, (..), length)
import Data.Show.Generic (genericShow)

import Card (Card(..))
import Setting (Setting(..))

-- getPiles :: Tableau -> List Pile
-- getPiles tableau = tableau.piles

newtype Pile = Pile { locked :: PileLocked, playable :: PilePlayable }

derive instance Generic Pile _
instance Show Pile where
  show = genericShow

newtype PileLocked = PileLocked (List Card)

derive instance Generic PileLocked _
instance Show PileLocked where
  show = genericShow

newtype PilePlayable = PilePlayable (List Card)

derive instance Generic PilePlayable _
instance Show PilePlayable where
  show = genericShow
