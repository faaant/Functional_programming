module Main where

import Prelude
import Data.Maybe (isNothing, fromMaybe)
import Data.Array (index, reverse, (:))
import Data.Array.Partial (tail)
import Partial.Unsafe (unsafePartial)
import Effect (Effect)
import Effect.Console (log)

singleton :: forall el. el -> Array el
singleton el = [el]

null :: forall t. Array t -> Boolean
null arr = 
  if isNothing (index arr 0)
  then true
  else false

snoc :: forall t. Array t -> t -> Array t
snoc arr el = reverse(el : (reverse arr))


length :: forall t. Array t -> Int
length arr = 
  if (null arr)
  then 0
  else 1 + length(unsafePartial tail arr)


main :: Effect Unit
main = log "🍝"