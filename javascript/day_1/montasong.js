var song = prompt("cifra??");
var songw = song.replace(/ /g, String.fromCharCode(10));
var array = songw.split(String.fromCharCode(10));
var arrayw = [];
var output = "";
for (var i = 0; i < array.length; i++) {

    if (array[i].search("DO") >= 0) {
      arrayw[i] = array[i].replace("DO", " C");
      output += arrayw[i];
    }
    else if (array[i].search("RE") >= 0) {
      arrayw[i] = array[i].replace("RE", " D");
      output += arrayw[i];
    }
    else if (array[i].search("mi") >= 0) {
      arrayw[i] = array[i].replace("mi", " E");
      output += arrayw[i];
    }
    else if (array[i].search("fa") >= 0) {
      arrayw[i] = array[i].replace("fa", " F");
      output += arrayw[i];
    }
    else if (array[i].search("sol") >= 0) {
      arrayw[i] = array[i].replace("sol", " G");
      output += arrayw[i];
    }
    else if (array[i].search("la") >= 0) {
      arrayw[i] = array[i].replace("la", " A");
      output += arrayw[i];
    }
    else if (array[i].search("si") >= 0) {
      arrayw[i] = array[i].replace("si", " B");
      output += arrayw[i];
    }
    else {
      arrayw[i] = " C";
      output += arrayw[i];
    }
  }
// for (var i = 0; i < array.length; i++) {
//   switch (array[i]) {
//     case "DO":
//       arrayw[i] = array[i].replace("DO", " C");
//       output += arrayw[i];
//       break;
//     case "RE":
//       arrayw[i] = array[i].replace("RE", " D");
//       output += arrayw[i];
//       break;
//     case "mi":
//       arrayw[i] = array[i].replace("mi", " E");
//       output += arrayw[i];
//       break;
//     case "fa":
//       arrayw[i] = array[i].replace("fa", " F");
//       output += arrayw[i];
//       break;
//     case "sol":
//       arrayw[i] = array[i].replace("sol", " G");
//       output += arrayw[i];
//       break;
//     case "la":
//     alert(array[i]);
//     alert(array[i].length);
//       alert(array[i].replace("la", " A"));
//       arrayw[i] = array[i].replace("la", " A");
//     alert(arrayw[i]);
//       output += arrayw[i];
//       alert(output);
//       break;
//     case "si":
//       arrayw[i] = array[i].replace("si", " B");
//       output += arrayw[i];
//       break;
//     default:
//       arrayw[i] = " C";
//       output += arrayw[i];
//     }
