var squares = document.querySelectorAll("td");
var restart = document.querySelector('#b');

function clearBoard() {
  for (var i = 0; i < squares.length; i++) {
    squares[i].textContent = " ";
  }
}


restart.addEventListener('click', clearBoard)


function checkSquares() {
  if (this.textContent === '') {
    this.textContent = "X";
  } else if (this.textContent === "X") {
    this.textContent = "O";
  } else {
    this.textContent = "";
  }
}

for (var i = 0; i < squares.length; i++) {
  squares[i].addEventListener('click', checkSquares)
}
