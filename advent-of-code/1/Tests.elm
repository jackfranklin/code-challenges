module Tests where

import ElmTest exposing (..)

import String
import TestInput
import App exposing (floorCount, basementEnter)



all : Test
all =
    suite "Day One"
        [
            test "floorCount" (assertEqual 138 (floorCount TestInput.data)),
            test "basementEnter" (assertEqual 1771 (basementEnter TestInput.data))
        ]
