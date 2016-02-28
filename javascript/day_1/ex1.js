/*var name = prompt("What is your name?");
//alert(name);
var result = confirm("sure " + name + " is correct??");
console.log(result);

var message = "Ola";
document.write(message);
console.log(message);
alert(message);

var resp = prompt("What is your name?");
alert(resp);
// ex51
var pw = prompt("What is the pw?");

  if (pw === "opensesame") {
    alert (123);
  }
  else {
    alert ("wrong")
  }


// ex52
var enter = confirm("Do you want to enter?");

  if (enter) {
    var pw = prompt("What is the pw?");

      if (pw === "opensesame") {
        alert (123);
      } else {
        alert ("wrong")
        }
  }else {
    alert("ok, bye")
  }

  // ex 53
  // var enter = confirm("Do you want to enter?");
  //
  //   if (enter) {
  //     var pw = prompt("What is the pw?");
  //       if (pw.length > 12) {
  //         alert("Too long");
  //       } else if (pw.length < 8) {
  //         alert("Too short!");
  //       } else {
  //         alert("Just Right!");
  //       }
  //   }else {
  //     alert("ok, bye")
  //   }

i = 0
  while (i < 100){
    if i % 2 === 0 {
      console.log(i);
      i += 1;
    }
  }
