module Tests where

import ElmTest exposing (..)

import String
import TestInput
import App exposing (wrappingAmount, amountForPresents, ribbonAmountForPresents)



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
            test "actual" (assertEqual 1598415 (amountForPresents TestInput.data)),
            test "ribbon basic" (assertEqual 34 (ribbonAmountForPresents presents)),
            test "ribbon actual" (assertEqual 3812909 (ribbonAmountForPresents TestInput.data))
        ]
