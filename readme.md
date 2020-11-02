This is my version of Tic Tac Toe built with Ruby and played from the command line.

This project is part of the curriculum of The Odin Project.

My first attempt at this project had me employ a single class to hold all aspects of the game, namely the players and the game board itself. This was not good practise as it added needless complexity and produced many inter-dependent methods which were ultimately not clear in intent and produced a number of bugs. I thus decided to split the players and game board into their own seperate classes which allowed me to create methods with clearer intent and less dependency on the results of other methods.

Furthermore, I put the classes into their own files and imported them into a main 'app.rb' file. From here I wrote the actual structure of the game; I would bring in elements from the seperated classes only when necessary which added a degree of flexibility to the design.

This project offered a good opportunity to code with some thought to OOP design principles, particularly encapsulation, polymorphism and abstraction.
