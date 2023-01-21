{-# LANGUAGE GADTs, StandaloneDeriving, LambdaCase, TypeFamilies #-}

-----------------------------------------------------------------------------
module Unit ( Streamable(..), Unit(..), next ) where

-----------------------------------------------------------------------------

import qualified Data.List as List
import qualified Data.Text as Text

import Data.Text ( Text )
import Data.Kind ( Type )

-----------------------------------------------------------------------------

class Streamable s where
  type Piece s :: Type
  uncons :: s -> Maybe (Piece s, s)

instance Streamable Text where
  type Piece Text = Char
  uncons = Text.uncons

instance Streamable [a] where
  type Piece [a] = a
  uncons = List.uncons

data Unit x xs where
  Character :: Unit Char Text
  Word :: Unit Text [Text]

deriving instance Show (Unit x xs)

next :: Unit x xs -> xs -> Maybe (x, xs)
next = \case
  Character -> Text.uncons
  Word -> List.uncons