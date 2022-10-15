module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.Tuple (Tuple(..))
import Data.List (List(..), (:))
import Lab2 as Lab2

creatorOfList :: Int -> List Int
creatorOfList n = if (n>1) then n:(creatorOfList (n+1)) else n:Nil

main :: Effect Unit
main = do 
    log "findIndex (\\x -> x > 4) (1:2:5:10:Nil)"
    log $ show $ Lab2.findIndex (\x -> x > 4) (1:2:5:10:Nil)

    log "\nfindIndex (\\x -> x > 15) (1:2:5:10:Nil)"
    log $ show $ Lab2.findIndex (\x -> x > 15) (1:2:5:10:Nil)

    log "\nfindLastIndex (\\x -> x > 4) (1:2:5:10:Nil)"
    log $ show $ Lab2.findLastIndex (\x -> x > 4) (1:2:5:10:Nil)

    log "\nfindLastIndex (\\x -> x > 15) (1:2:5:10:Nil)"
    log $ show $ Lab2.findLastIndex (\x -> x > 15) (1:2:5:10:Nil)

    log "\nzip (1:2:3:Nil) (5:6:7:Nil)"
    log $ show $ Lab2.zip (1:2:3:Nil) (5:6:7:Nil)
    
    log "\nunzip (((Tuple 1 5) : (Tuple 2 6) : (Tuple 3 7) : Nil)"
    log $ show $ Lab2.unzip ((Tuple 1 5) : (Tuple 2 6) : (Tuple 3 7) : Nil)

    log "\nfilter (\\x -> x > 3) (1:2:5:10:Nil)"
    log $ show $ Lab2.filter (\x -> x > 3) (1:2:5:10:Nil)

    log "\nfilter (\\x -> x > 15) (1:2:5:10:Nil)"
    log $ show $ Lab2.filter (\x -> x > 15) (1:2:5:10:Nil)

    log "\ntailFilter (\\x -> x > 3) (1:2:5:10:Nil)"
    log $ show $ Lab2.tailFilter (\x -> x > 3) (1:2:5:10:Nil) Nil

    log "\ntailFilter (\\x -> x > 15) (1:2:5:10:Nil)"
    log $ show $ Lab2.tailFilter (\x -> x > 15) (1:2:5:10:Nil) Nil

    log "\ntake 3 (1:2:5:10:Nil)"
    log $ show $ Lab2.take 3 (1:2:5:10:Nil)

    log "\ntake 0 (1:2:5:10:Nil)"
    log $ show $ Lab2.take 0 (1:2:5:10:Nil)

    log "\ntake 10 (1:2:5:10:Nil)"
    log $ show $ Lab2.take 10 (1:2:5:10:Nil)

    log "\ntailTake 3 (1:2:5:10:Nil)"
    log $ show $ Lab2.tailTake 3 (1:2:5:10:Nil) Nil

    log "\ntailTake 0 (1:2:5:10:Nil)"
    log $ show $ Lab2.tailTake 0 (1:2:5:10:Nil) Nil
    
    log "\ntailTake 10 (1:2:5:10:Nil)"
    log $ show $ Lab2.tailTake 10 (1:2:5:10:Nil) Nil
