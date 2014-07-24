<!DOCTYPE html>
<html>
<head>

<script type="text/javascript" charset="utf-8" >
  window.WebSocket = window.WebSocket || window.MozWebSocket;
  
 if (!window.WebSocket){
     alert("WebSocket not supported by this browser");
     return;
 };
  
var websocket = new WebSocket("ws://127.0.0.1:8080/websocket");
 websocket.onmessage = function(evt){
     var data = evt.data;
      alert("received message: " + data);
 }

 function send() {
 var name = document.querySelector("input[name=name]").value;
    alert("websocket send message:"+name);
    websocket.send(name);
 }
</script>
</head>
<body>
<label for="name">What’s your name:</label>
<input type="text" id="name" name="name" />
<button onclick="send()">Send</button>
<div id="message" style="color:red"></div>
</body>
</html>
