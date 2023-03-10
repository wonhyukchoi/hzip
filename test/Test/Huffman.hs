-----------------------------------------------------------------------------

module Test.Huffman ( test ) where

-----------------------------------------------------------------------------

import Test.QuickCheck ( property )
import Test.Hspec ( SpecWith, describe, it )

import Base ( compress, decompress )
import Huffman ( Encoding )

-----------------------------------------------------------------------------

-- | Property that encode . decode == id.
--   QuickCheck does not natively implement Text, so we use String.
prop_inverse :: String -> Bool
prop_inverse txt = txt == decompress encoded
  where encoded :: Encoding Char
        encoded = compress txt

test :: SpecWith ()
test = describe "Huffman encode/decode inverse test" $ do
  it "checking..." $ property prop_inverse