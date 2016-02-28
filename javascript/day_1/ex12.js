var p = prompt('numbers??');

var nums = p.split(" ");

var sum = 0;

for (var i = 0; i < nums.length; i++) {
  sum += parseInt(nums[i]);
}
 alert(sum/nums.length);

// var i = 0;
//   while (i <= 100){
//     if (1 == 1) {
//       console.log(i);
//       i += 1;
//     }
//   }
// for (i=100; i >= 1; i -= 1){
// console.log(i + " bottles of beer on the wall");
// console.log(i + " bottles of beer");
// console.log(" Take one down, pass it around, " + (i-1) + " bottles of beer on the wall");
// }
// ex ....
//var number = 75;
//var guess = 0

// while (guess != number){
//    var guess = prompt("Guess the number 0 to 100??");
//   if (guess == number) {
//     alert("your guess is right");
//     break;
//   } else if (guess < number){
//     alert("your guess is less");
//   } else {
//     alert("your guess is greater");
//   }
//
//   alert("after the if...");
// }
// alert("after the while");

// var array = [0, 5, 6, -12]
// var sum = 0
// for (var i=0; i < array.length; i++){
//     sum += array[i];
// }
// console.log("Sum = " + sum);

// var array = ["apple", "dog", "computer", "cup"]
// for (var i=0; i < array.length; i++){
//   console.log("word " array[i] + " has " + array[i].length + "chars")
// }
// function insult(name){
//   console.log(name + ", you dummy");
//   return name + ", you dummy";
// }
// function increment(x){
//   console.log(x += 1);
//   return x
// }
// function doubleArray(array)
// var out = []
//   for (var i = 0; i < array.length; i++){
//     out[i] = array[i]*2;
//   }
//   return out
// }
// ex obj
var user = {name: "ze", age: 20};
var who = function(x) {console.log(x.name + " is " + x.age + " years old");}

who(user);

var sentence = "coding is great";
var wordLength = function(x) {
  x = x.split(" ");
  var obj = {}
  for (var i = 0; i < x.length; i++){
    obj[x[i]] = x[i].length;
  }
  console.log(obj)
}
wordLength(sentence);
