document.write("Loading...");
setTimeout(function() {document.write("Helo World")}, 3000);
setTimeout(function() {document.write("Ready")}, 6000);
setTimeout(function() {document.write("Set")}, 7000);
setTimeout(function() {document.write("Go!")}, 8000);
var a = 0;
setInterval(function(){
  console.log(a++)}, 1000);


  var teste = setInterval(function(){
    console.log(".")}, 1000);
  setTimeout(function() {clearInterval(teste)}, 10000);
