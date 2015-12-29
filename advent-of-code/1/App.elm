module App where
import String
import List

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

