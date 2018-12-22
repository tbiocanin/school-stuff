// PART 4 ARRAY EXERCISE
// This is  a .js file with commented hints, its optional to use this.

// Create Empty Student Roster Array
// This has been done for you!
var roster = []

// Create the functions for the tasks

// ADD A NEW STUDENT

// Create a function called addNew that takes in a name
// and uses .push to add a new student to the array
function addNew(name) {
  return roster.push(name);
}

// REMOVE STUDENT

// Create a function called remove that takes in a name
// Finds its index location, then removes that name from the roster
function remove() {
  // for (var i = 0; i < roster.length; i++) {
  //   if (roster[i] == name) {
  //     console.log(roster.pop(roster[i]));
  //     break;
  //   } else {
  //     console.log("There is no such name in the database");
  //   }
  // }
  //Solution:
  var remName = prompt("What would you like to remove?");
  var index = roster.indexOf(remName);
  roster.splice(index, 1)
}

// HINT: http://stackoverflow.com/questions/5767325/how-to-remove-a-particular-element-from-an-array-in-javascript
//

// DISPLAY ROSTER

// Create a function called display that prints out the orster to the console.
function display() {
  console.log(roster);
}

// Start by asking if they want to use the web app
start = prompt("Do you want to use the roster app? y/n")
// Now create a while loop that keeps asking for an action (add,remove, display or quit)
if (start == "y") {
  while(true) {
    var question = prompt("What action would you like to do? (add, remove, display or quit)");
    if (question == "add") {
      add = prompt("What name are you adding?");
      addNew(add);
    } else if (question == "display") {
      display();
    } else if (question == "remove") {
      remove();
    } else if(question == "quit") {
      break;
    } else {
      alert("Not recognized")
    }
  }
} else {
  alert("Thank you for your time!")
}
// Use if and else if statements to execute the correct function for each command.
