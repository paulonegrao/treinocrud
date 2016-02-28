var a = function (b){
  var b = prompt("number ?");
  return 0;
}


var obj = function (x) {
  console.log(x.name + " is " + x.age + " years old");
}

var sen = function (sentence) {
  var w = sentence.split(" ");
  var obj = {};
  for (var i = 0; i < w.length; i++) {
  obj[w[i]] = w[i].length;
  }
  console.log(obj);
  return(obj);
}

a(1000);
var o = {ze: 40};
obj(o);
sen("abacaxi e bem gostoso");

var output = ""
var car = {
  speed: "fast",

  stop: function() {
    if (this.speed === "fast") {
      output = "RRch";
    } else if (this.speed === "slow") {
        output = "sh";
      }  else  {
          output = "i dont know..."
      }
      console.log(output);
    }
}


var a = function() {console.log(this)}
a();


var a = {b: 100, func: function() {console.log(this)}}
a.func();

var a = {
  b: 50,
  func: function() {
    console.log(this.b);
    var _this = this;
    func1 = function() {
      console.log(this);
      console.log(_this);
    }
    func1();
  }
}

a.func();
