module App where
import String
import List
import Debug
import List.Extra exposing (takeWhile)

toNumber : String -> Int
toNumber str =
  case str of
    "(" -> 1
    ")" -> -1
    _ -> 0

floorCount : String -> Int
floorCount input =
  input
    |> String.split ""
    |> List.map toNumber
    |> List.sum

zip : List a -> List b -> List (a, b)
zip = List.map2 (,)

basementEnter : String -> Int
basementEnter input =
  let splitInput = String.split "" input
  in
    splitInput
      |> List.scanl (\b a -> a + (toNumber b)) 0
      |> zip [0..(List.length splitInput)]
      |> List.filter (\(a, b) -> b < 0)
      |> List.head
      |> Maybe.withDefault (0, 0)
      |> fst
