var howOld = function(age){
  if (age > 50) {
    return "old";
  }  else {
      return "young";
    }
}

howOld(49);
howOld(51);


function forEach(array, fun) {
  var result = [];
  for (var i = 0; i < array.length; i++) {
    result[i] = fun(array[i]);
  }
  return result;
}
forEach([1, 2, 3], function(x){return x * 2});

setTimeout(function() {document.write("Helo World")}, 3000);
var sayLater = function(w, t) {setTimeout(function() {console.log(w)}, t)};
sayLater("Alex", 6000);

Object.getOwnPropertyNames(window).length

var prop = window.Object.getOwnPropertyNames(this).length
