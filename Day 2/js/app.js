var SpeechRecognition = SpeechRecognition || webkitSpeechRecognition;
var recognition = new SpeechRecognition();

recognition.onresult = function(event) {
  document.getElementById("txtSpeech").value = event.results[0][0].transcript;
};
