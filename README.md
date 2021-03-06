# Ten Pin Bowling Challenge

Accept the challenge, and create a game of ten pin bowling!

Clone this repo, and make the tests pass! Feel free to implement whatever further tests and classes you need to make it work.

The initial setup has already implemented a class with two interface methods.  If you don't like this class or this interface, feel free to change it!  There are no wrong answers, as long as your game ultimately works the right way.

## Rules of Ten Pin Bowling

* There are 10 pins
* One point is scored per pin knocked over.
* Two throws equal one frame (10 pins).
* Pins reset either after 2 throws, or all 10 pins get knocked down.
* If the player knocks down all 10 pins at once, the player gets 10 points plus whatever the score of the next two balls is.

Example:
```
Frame 1.1: 10
Frame 2.1: 3
Frame 2.2: 6
Score: (10 + (3+6)) + 3 + 6
```

This is a consecutive process
```
Frame 1.1: 10
Frame 2.1: 10
Frame 3.1: 10
Frame 4.1: 0
Frame 4.2: 9

SCORE
10 + (10 + 10) = 30
10 + (10 + 0) = 20
10 + (0 + 0) = 19
0 + 9 = 9
TOTAL: 78
```

* There are 10 frames.
* If a player strikes in the final frame, they get two extra balls.
* A spare is awarded if the player knocks down all 10 pins on the second throw.
* The player gets 10 points plus the score of the next ball

```
Frame 1.1: 7
Frame 1.2: 3
Frame 2.1: 4
Frame 2.2: 2

SCORE
7 + 3 + (4) = 14
4 + 2 = 6
TOTAL: 20
```

## How to run this code

```
git clone git@github.com:muzfuz/ten_pin.git
cd ten_pin
bundle install
bundle exec rspec
```

That's it!

### Solution?
There's a branch called `solution` -- feel free to refer to it, and take it with a grain of salt.  It's probably not an optimal implementation, but it is one approach.
