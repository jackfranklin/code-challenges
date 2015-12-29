module Tests where

import ElmTest exposing (..)

import String
import TestInput
import App exposing (floorCount)



all : Test
all =
    suite "Day One"
        [
            test "Basic Case" (assertEqual 3 (floorCount "()()(((()")),
            test "Actual challenge" (assertEqual 138 (floorCount TestInput.data))
        ]
