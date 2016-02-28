var func1 = function(num, func){
  return func(num);
}

var func2 = function(x){
  return x * 2;
}



var map = function(a, func) {
  for (var i = 0; i < a.length; i++ ){
     a[i] = func(a[i]);
  }
  return out;
}

map(["hello", "data", "eat cheese", "walking"], function (x) {
  return x.length;}
})
