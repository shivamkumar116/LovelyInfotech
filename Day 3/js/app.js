var video = document.getElementById("videoElement");

if (navigator.mediaDevices.getUserMedia) {
  navigator.mediaDevices
    .getUserMedia({ video: true })
    .then(function(stream) {
      video.srcObject = stream;
    })
    .catch(function(err) {
      console.log("Something went wrong");
    });
}
QCodeDecoder().decodeFromVideo(video, function(er, res) {
  console.log(res);
  document.getElementById("qrContent").innerHTML = res;
});
