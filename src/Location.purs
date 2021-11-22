module Location where

{- | Where the card currently resides.
-}
-- TODO: this list will modify substantially as we implment needed methods
data Location
  = Foundation
  | Tableau
  | Waste
  | None -- needed while generating cards
