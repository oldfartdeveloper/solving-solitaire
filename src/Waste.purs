module Waste where
  
import Data.List (List)

import Card (Card)

newtype Waste = Waste (List Card)
