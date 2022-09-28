module Lab1 where

import Prelude

import Data.List (List(..), (:))

singleton :: forall el. el -> List el
singleton el = (Cons el Nil)

null :: forall t. List t -> Boolean
null Nil = true
null list = false

snoc :: forall t. List t -> t -> List t
snoc Nil el = (Cons el Nil)
snoc (Cons first tail) el = (Cons first (snoc tail el))

length :: forall a. List a -> Int
length Nil = 0
length (el: list) = (length list) + 1