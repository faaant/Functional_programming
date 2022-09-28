module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List (List(..))
import Lab1 as Lab1


main :: Effect Unit
main = do 
  log "Lab1.singleton 5"
  log $ show $ Lab1.singleton 5

  log "\nLab1.singleton (Cons 5 Nil)"
  log $ show $ Lab1.singleton (Cons 5 Nil)

  log "\nLab1.null (Cons 5 Nil)"
  log $ show $ Lab1.null (Cons 5 Nil)

  log "\nLab1.null Nil"
  log $ show $ Lab1.null Nil

  log "\nLab1.snoc (Cons \"hello\" Nil) \"World\""
  log $ show $ Lab1.snoc (Cons "World" (Cons "hello" Nil)) "dear"

  log "\nLab1.snoc Nil \"World\""
  log $ show $ Lab1.snoc Nil "World"

  log "\nLab1.length (Cons \"hello\" (Cons \"world\" Nil))"
  log $ show $ Lab1.length (Cons "hello" (Cons "world" Nil))

  log "\nLab1.length Nil"
  log $ show $ Lab1.length Nil

