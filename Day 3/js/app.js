var video = document.getElementById("videoElement");

if (navigator.mediaDevices.getUserMedia) {
  navigator.mediaDevices.getUserMedia({ video: true }).then(function(stream) {
    video.srcObject = stream;
  });
}

//calling the QcodeDecoder function from the library files in qe
QCodeDecoder().decodeFromVideo(video, function(er, res) {
  document.getElementById("qrContent").innerHTML = res;
});
