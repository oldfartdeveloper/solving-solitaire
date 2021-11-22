module Setting where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.Maybe (Maybe(..))
import Data.Show (class Show, show)
import Data.Show.Generic (genericShow)

newtype Setting = Setting
  { top :: Int
  , position :: Int
  }

derive instance Generic Setting _

instance Show Setting where
  show = genericShow

succ :: Setting -> Maybe Setting
succ (Setting p) =
    if p.position >= p.top
    then Nothing
    else Just $ Setting $ p { position = p.position + 1 }
pred (Setting p) =
  if p.position <= 1
  then Nothing
  else Just $ p { position = p.position - 1 }

top :: Setting -> Setting
top (Setting p) = Setting $ p { position = p.top }

bottom :: Setting -> Setting
bottom (Setting p) = Setting $ p { position = 1 }
