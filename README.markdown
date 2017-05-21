## Scrabble

Work on the sample exercise defined below for 30 minutes.

As you work, you may:

* Ask questions of your facilitator
* Reference external public resources (ie: Google, Ruby API, etc)
* Use the tooling most comfortable to you (Editor/IDE, testing framework, support tools like Guard, etc)

As you work, you should not:

* Copy code snippets other than those present in this description
* Seek live support from individuals other than your facilitator

### Setup

```
$ git clone https://github.com/turingschool/scrabble
$ cd scrabble
$ bundle
```

### Running Specs/Tests

Starter files for both MiniTest and RSpec are provided.

To run the RSpec specs:

```
bundle exec rake spec
```

To run the MiniTest tests:

```
bundle exec rake test
```

### Sample Exercise: Word Scoring

Let’s use test-driven development to build pieces of a Scrabble-like game.

Create functionality to score words based on the following letter values:

|Letter|Value|
|------|:---:|
|A, E, I, O, U, L, N, R, S, T |1|
|D, G |2|
|B, C, M, P |3|
|F, H, V, W, Y |4|
|K |5|
|J, X |8|
|Q, Z |10|

```ruby
{
  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
    "E"=>1, "F"=>4, "G"=>2, "H"=>4,
    "I"=>1, "J"=>8, "K"=>5, "L"=>1,
    "M"=>3, "N"=>1, "O"=>1, "P"=>3,
    "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
    "U"=>1, "V"=>4, "W"=>4, "X"=>8,
    "Y"=>4, "Z"=>10

}
```

Create your solution:

* using Test-Driven Development with MiniTest or RSpec
* insensitive to case
* such that an empty word or nil scores 0
* using this interaction model:

```ruby
> game = Scrabble.new
=> ...
> game.score("hello")
=> 8
> game.score("")
=> 0
> game.score(nil)
=> 0
```

