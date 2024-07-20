# 2-Player Math Game

A simple command-line 2-Player Math Game built with Ruby. Players take turns answering math addition questions. Each incorrect answer results in a lost life. The game continues until one player loses all their lives.

## How to Play

### Clone the repository:

git clone https://github.com/Mpalko07/TwO-O-Player_Math_Game.git
cd 2-player-math-game

### Run the game:

ruby main.rb
Follow the prompts to enter player names and answer questions.

### Gameplay:

Each player starts with 3 lives.
Answer correctly to keep your lives.
Lose a life for each incorrect answer.
The game ends when a player loses all their lives, and the winner is announced.
Project Structure
player.rb: Defines the Player class.
game.rb: Defines the Game class and manages game flow.
question.rb: Defines the Question class and generates math questions.
main.rb: The main entry point for the game.