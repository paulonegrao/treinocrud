//var notes = [{pitch: 'A', beats: 1}, {pitch: 'C#', beats: 2}, {pitch: 'D', beats: 4}];
// Play the song at 400 beats per minute.
//playSong(notes, 400);

var parseSong = function(song) {
  var output = [];
  var somquebrado = song.split(" ");
  for (var i = 0; i < somquebrado.length; i++) {
    output[i] = parseNote(somquebrado[i]);
  }
  return output;
}

var parseNote = function(input) {
  var note = {};
  var bits = input.split("*");
  if (bits[1] === undefined) {
    bits[1] = 1;
  }
  note["pitch"] = bits[0];
  note["beats"] = bits[1];
  return note;
}

var onComplete = function fplay () {
  var song = prompt("Give me a song...");
  if (song != null) {
    playSong(parseSong(song), 400, onComplete)
    console.log(song + "is playing");
  }
}
onComplete()
