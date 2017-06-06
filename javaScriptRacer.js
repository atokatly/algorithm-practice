var racerGame = function(args) {
  if(!args) { args= {}}
  this.players = args.players;
  this.size = args.size;
  var board = {};
  this.players.forEach(function(player){
     board[player] = new Array(args.size).fill(" ");
     board[player][0] = player;
  });
  this.board = board;
  this.aMove = 0;
  this.bMove = 0;
  this.winner = null;
};

// generates command line board
racerGame.prototype.generateBoard = function() {
  console.log(this.board.a.join("|"));
  console.log(this.board.b.join("|"));
};

// Picks a random number between 1 and 6 to move each player
racerGame.prototype.rollDie = function() {
  return Math.floor(Math.random() * 6) + 1;
};

// Moves player along the board
racerGame.prototype.movePlayer = function() {
  var count = 0;
  while (count < this.players.length) {
    var current = this.players[count];
    var index = this.board[current].indexOf(current);
    if (current === 'a') {
      this.board.a[(this.aMove + index)] = 'a';
      this.board.a[index] = ' ';
    } else {
      this.board.b[(this.bMove + index)] = 'b';
      this.board.b[index] = ' ';
    }
    count += 1;
  }
};

// Loops through players and checks for a winner
racerGame.prototype.checkWinner = function() {
  var count = 0;
  while (count < this.players.length) {
    if (this.board[this.players[count]].indexOf(this.players[count]) >= (this.size -1)){
      this.winner = this.players[count];
    }
    count += 1;
  }
};

// Initialize new game & generate board
var game = new racerGame({players: ['a','b'], size: 30});
while (game.winner === null) {
    game.aMove = game.rollDie();
    game.bMove = game.rollDie();
    game.movePlayer();
    game.generateBoard();
    game.checkWinner();

}

`Player ${game.winner} wins!`;
