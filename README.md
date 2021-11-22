# Summary

Can the computer be taught to play the Solitaire card game like an expert?  How about variations of Solitaire rules? How about building a database for machine learning to measure how well our computer has learned to play? Let's have fun finding out.

## Playing Rules

The rules are like the very popular **[Klondike](https://en.wikipedia.org/wiki/Klondike_(solitaire)#Rules)** game with the following modifications:

1. Be able to see every card rank and suit even while they are face-down in the *tableau*.
2. At the start of the game, all cards in the *stock* are moved to the *waste* and are able to moved to the *tableau* or *foundation*.  I.e. there is no *stock*.
3. The game is won when the last facedown card in the *tableau* is flipped to faceup. The other outcome is you run out of moves without having won.

These modifications:

* Simplify game play.
* Give better visibility for insights into identifying the best play tactics.
* More easily learn when a game is not solveable because the card configuration has blockages.
* There are many interesting variations that are easy to implement that might reveal additional understanding of how to play.
* Enable us to eliminate redundent permutations of initial games so that you don't find you're playing the same game twice.
* Ease storing initial deals how each was played.  These games can be replayed (to see if you can do better) or analyzed for why they weren't solved.
* Finally, and not least, the game is simply more enjoyable if you want more skill and less luck; it plays faster and the challenges are more satisfying.
* And, finally, if you are interested in learning PureScript, well, this application will introduce almost all of PureScript's features in a client/server setup.

## Play the Game

*TODO* set link to where the game can be played.

## Roadmap

We're just beginning.  This will be a top/down approach:

| Status | Objective |
|--------|--------------|
| In Progress | Document development process so that you know how we're doing this. Including our "hiccups". This is a learning experience. |
| In Progress | Precisely define game play |
| Soon | Model deck, cards, rank, and suit |
| Soon | Model game: stock, foundation, and administration |
| Soon | Model actions: starting games, identifying targets (places where a card could be moved), cards that can be moved to a target, identifying when a game is won or lost |
| Soon | Be able to run a full game in your development system by installing PureScript, cloning this repo, installing, building, testing, and running the game on your browser|
| Later | Normalize games to eliminate duplicates |
| Later | Provide a server that generates new games, stores how you played **\*** , makes available solved games for you to play, and availability of the database to feed into machine learning (ML). |
| Later | Be able to configure variations of the game from a simple configuration |
| Later | Use these features to help research automation to make the computer play better |
| * | This is asked of you to help build our database so that we can apply machine learning to determine how we're doing.  This builds a library of games that are known to be solveable, blocked, or unknown whether they can be solved or not.  No personal data will need to be submitted except, if you want to identify games that you've already play, you may use a unique token we will provide you to identify games you have already played. |

## Additional Objectives

* Developed with continuous integration automation.
* This game plays pleasurably on smart devices (including small phones) as well as desktops.
* Adheres to industry-standard accessibility standards.

## Licensing

There will be two licenses:

## Software

*TODO*: Something close to the MIT license.  I.e. you can use any of the source code in any way you wish.

## Documentation

*TODO*: This will be used by the group non-commercially as a vehicle to teach functional programming from first principles to detailed implementation.  We will be selecting a "common-creations" license soon so that, at most, you will have to credits our work that you include in your own documentation.

## For developers

*TODO* (Come join us, here's our discussion group, etc)

### Installation

*TODO*: (as soon as we have some code and our CI system is set up)

## Acknowledgements

*TODO*: (as time goes gy)
