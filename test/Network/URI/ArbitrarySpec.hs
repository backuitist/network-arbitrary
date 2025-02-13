{-|
Module      : Network.URI.ArbitrarySpec
Description : Tests for Network.URI.Arbitrary
Copyright   : (c) Alex Brandt, 2018
License     : MIT

Tests for "Network.URI.Arbitrary".
-}
module Network.URI.ArbitrarySpec (main, spec) where

import Network.URI (isURIReference, parseURIReference, uriToString)
import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)

import Network.URI.Arbitrary ()

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    do prop "isURIReference (uriToString id u \"\")" $ \ u -> isURIReference (uriToString id u "")

       prop "Just u == parseURIReference (uriToString id u \"\")" $ \ u -> Just u == parseURIReference (uriToString id u "")
