module Tests where

import ElmTest exposing (..)

import String
import TestInput
import App exposing (wrappingAmount, amountForPresents)



presents =
  [
    { w = 3, h = 4, l = 2 }
  ]

all : Test
all =
    suite "Day Two"
        [
            test "basic" (assertEqual 58 (wrappingAmount 2 3 4)),
            test "list" (assertEqual 58 (amountForPresents presents)),
            test "actual" (assertEqual 1598415 (amountForPresents TestInput.data))
        ]
