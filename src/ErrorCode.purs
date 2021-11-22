module ErrorCode where

data ErrorCode
  {- | Card game parameters will work for this game -}
  = Ok
  {- | Given the required suit colors, suits per color, and the
    | number of piles and cards within the piles, there are simply
    | not enough cards in the deck to go around.
  -}
  | NotEnoughCardsInDeck
