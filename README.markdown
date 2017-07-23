# Scrabble

Work on the sample exercise defined below for 1 hour.

As you work, you may:

* Ask questions of your facilitator
* Reference external public resources (ie: Google, Ruby API, etc)
* Use the tooling most comfortable to you (Editor/IDE, testing framework, support tools like Guard, etc)

As you work, you should not:

* Copy code snippets other than those present in this description
* Seek live support from individuals other than your facilitator

## Preparation

1. Fork this repository.
2. Clone your new repository to your local machine (`$ git clone https://github.com/<YOUR GITHUB USERNAME>/scrabble.git`)
3. `cd` into your scrabble directory.
4. Run `bundle` from the command line.
5. Run `rake` from the command line.

## Running Specs/Tests

To run the MiniTest tests run `rake` from the command line.

## Overview

Let’s use test-driven development to build pieces of a Scrabble-like game.

At a high level, you will be adding to an existing `Scrabble` class to make it so that it can score words. Words will be scored based on the following letter values:

|Letter|Value|
|------|:---:|
|A, E, I, O, U, L, N, R, S, T |1|
|D, G |2|
|B, C, M, P |3|
|F, H, V, W, Y |4|
|K |5|
|J, X |8|
|Q, Z |10|

Or, stored as a Ruby hash:

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

When complete, your Scrabble class will be able to:

1) score a word,
2) score an empty string,
3) score when someone passes `nil`
4) score a word with letter multipliers,
5) score word with a word multiplier,
6) score a word with a seven-letter bonus.

## Interaction Pattern

Using test-driven development, implement an interaction pattern that scores words insensitive to case, such that an empty word or nil scores 0, which follows the interaction pattern below.

```
> game = Scrabble.new
=> ...
> game.score("hello")
=> 8
> game.score("")
=> 0
> game.score(nil)
=> 0
```

Note: a double letter score in Scrabble is dependent on the position of a letter on the board. The arrays passed to `#score_with_multipliers` below indicate the multiplier for a letter in the corresponding position of the word that is passed as the first argument.

```
> game.score_with_multipliers('hello', [1,2,1,1,1])
=> 9
> game.score_with_multipliers('hello', [1,2,1,1,1], 2)
=> 18
```

Additionally, a word scores a 10-point bonus (applied before the word multiplier) if that word has seven or more letters.

```
> game.score_with_multipliers('sparkle', [1,2,1,3,1,2,1], 2)
=> 58
```

Use the existing `point_values` method in the `Scrabble` class as a source for each letter's value.

It is expected that you will add to the existing tests in `test/scrabble_test.rb`.

## Evaluation Rubric

### 1. Ruby Syntax & Style

* 4:  Application demonstrates excellent knowledge of Ruby syntax, style, and refactoring
* 3:  Application shows strong effort towards organization, content, and refactoring
* 2:  Application runs but the code has long methods, unnecessary or poorly named variables, and needs significant refactoring
* 1:  Application generates syntax error or crashes during execution

### 2. Breaking Logic into Components

* 4: Application is expertly divided into logical components each with a clear, single responsibility
* 3: Application effectively breaks logical components apart but breaks the principle of SRP
* 2: Application shows some effort to break logic into components, but the divisions are inconsistent or unclear
* 1: Application logic shows poor decomposition with too much logic mashed together

### 3. Test-Driven Development

* 4: Application is broken into components which are well tested in both isolation and integration using appropriate data
* 3: Application is well tested but does not balance isolation and integration tests, using only the data necessary to test the functionality
* 2: Application makes some use of tests, but the coverage is insufficient
* 1: Application does not demonstrate strong use of TDD

### 4. Functional Expectations

* 4: Application meets all requirements, and implements one extension properly.
* 3: Application meets all requirements as laid out per the specification.
* 2: Application runs, but does not work properly, or does not meet specifications.
* 1: Application does not run, crashes on start.

### 5. Version Control

* 4: Student demonstrates strong git workflow, commits frequently to document progress, uses commits to identify added functionality, and utilizes pull requests for communication and feedback
* 3: Student utilizes git workflow essentials, committing frequently to document progress
* 2: Student adds and commits infrequently and pushes project to GitHub
* 1: Student makes an initial commit and pushes project to GitHub

