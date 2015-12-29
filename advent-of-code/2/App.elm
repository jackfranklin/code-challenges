module App where
import String
import List
import Debug


type alias Present =
  { h : Int, w : Int, l : Int }

smallestSide : Int -> Int -> Int -> Int
smallestSide l w h =
  Maybe.withDefault 0 (List.minimum [w * h, l * w, h * l])

surfaceArea : Int -> Int -> Int -> Int
surfaceArea l w h =
  2 * l * w + 2 * w * h + 2 * h * l

wrappingAmount : Int -> Int -> Int -> Int
wrappingAmount l w h =
  (surfaceArea l w h) + (smallestSide l w h)

amountForPresents : List Present -> Int
amountForPresents presents =
  presents
  |> List.map (\p -> (wrappingAmount p.l p.w p.h))
  |> List.sum

