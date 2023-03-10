# deflate
A pure Haskell file compressor / decompressor using the [DEFLATE algorithm](https://en.wikipedia.org/wiki/Deflate).

## Installation
The recommended installation is through [Haskell Stack](https://docs.haskellstack.org/en/stable/).
You can either install [Stack directly](https://docs.haskellstack.org/en/stable/#how-to-install-stack) or [GHCup](https://www.haskell.org/ghcup/)(recommended).

Once you have Stack, just type
```
stack install hzip
```
and `hzip` should be copied onto your path.

## Usage
### Flags
#### Implemented
Nothing here :(

#### Unimplemented
* `-i`, `--input`
* `-o`, `--output`, or if none specified, `stdout`
* `-e`, `--compress`
* `-d`, `--decompress`
* `-c`, `--char`, do compression at the character granularity. This is the default.
* `-w`, `--word`, do compression at the word (stream of characters delimited by whitespace (space, tab, newline)) granularity
* `-p`, `--profile`, calculates time and size of compression / decompression
* `-h`, `--huffman`, only applies Huffman compression algorithm
* `-l`, `--lz77`, only applies LZ77 compression algorithm
* `-g=[int]`, `--greed`
    * Greediness factor 0-10 (default 5).
    * Higher greed results in longer compression times, but smaller files. 
    * Greediness of 0 results in an uncompressed file. Greed of 10 for big files may not terminate.

#### Unimplemented

## Benchmarks
Mostly a TODO.