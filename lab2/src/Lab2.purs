module Lab2 where
import Prelude
import Data.Tuple (Tuple(..), fst, snd)
import Data.Maybe (Maybe(..), fromMaybe, isNothing)
import Data.List (List(..), (:), reverse, length)

findIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findIndex condition = find 0
    where
      find:: Int -> List a -> Maybe Int
      find index (first : tail) = if (condition first) then (Just index) else (find (index+1) tail)
      find _ Nil = Nothing

findLastIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findLastIndex condition list = 
    let x = findIndex condition (reverse list) in
    if (isNothing x) then Nothing else (Just ((length list) - (fromMaybe 0 x) - 1))

zip :: forall a b. List a -> List b -> List (Tuple a b)
zip _ Nil = Nil
zip Nil _ = Nil
zip (x:xs) (y:ys) = (Tuple x y) : (zip xs ys)
zip Nil Nil = Nil

unzip :: forall a b. List (Tuple a b) -> Tuple (List a) (List b)
unzip list = (Tuple (createFirstList list) (createSecondList list))
    where
        createFirstList::forall a b. List (Tuple a b) -> List a
        createFirstList (x:xs) = (fst x) : (createFirstList xs)
        createFirstList Nil = Nil

        createSecondList::forall a b. List (Tuple a b) -> List b
        createSecondList (y:ys) = (snd y) : (createSecondList ys)
        createSecondList Nil = Nil

filter :: forall a. (a -> Boolean) -> List a -> List a
filter p (x:xs) | p x = x : (filter p xs)
filter p (_:xs) = filter p xs
filter _ Nil = Nil

tailFilter :: forall a. (a -> Boolean) -> List a -> List a -> List a
tailFilter p (x:xs) currentList | p x = (tailFilter p xs (x:currentList))
tailFilter p (_:xs) currentList = (tailFilter p xs currentList)
tailFilter _ _ currentList = reverse currentList

take :: forall a. Int -> List a -> List a
take n (x:xs) = if n>0 then x:(take (n-1) xs) else Nil
take _ _ = Nil

tailTake :: forall a. Int -> List a -> List a -> List a
tailTake n (x:xs) currentList = if n>0 then (tailTake (n-1) xs (x:currentList)) else (reverse currentList)
tailTake _ _ currentList = reverse currentList