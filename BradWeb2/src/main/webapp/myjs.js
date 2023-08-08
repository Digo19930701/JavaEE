window.onload = function(){
	let initBlock = document.getElementById("init");
	let mesgBlack = document.getElementById("mesgBlack");
	let connect = document.getElementById("connect");
	let userName = document.getElementById("userName");
	let send = document.getElementById("mesg");
	let mesg = document.getElementById("mesg");
	let log = document.getElementById("mesg");
	
	let webSocket;
	
	connect.addEventListener('ckick',function(){
		console.log("connecting...");
		webSocket = new webSocket("ws://localhost:8080/BradWeb2/MySever");
		webSocket.onopen = function(event){
			onsole.log("onopen...");
			initBlock.style.display = 'block';
			mesgBlack.style.display = 'none';
			
			var mesg = {
			mode : 2,
			message : mesg.value
			
			};
			webSocket.send(JSON.stringify(sendMesg));
		}
		webSocket.onclose = function(event){
			onsole.log("onclose...");
			initBlock.style.display = 'block';
			mesgBlack.style.display = 'none';
		}
		webSocket.onerror = function(event){
			onsole.log("onerror...");
			initBlock.style.display = 'block';
			mesgBlack.style.display = 'none';
		}
		webSocket.onmessage = function(event){
			onsole.log("onmessage...");
			
			var obj = JSON.parse(event.data);
			log.innerHTML += obj.user + ":" + obj.message + "<br/>"
		}
	});
	
	send.addEventListener('click',function(){
		console.log("send...");
		var sendmesg = {
			mode : 1,
			user : mesg.value
			
		};
		webSocket.send(JSON.stringify(sendMesg));
	 
	});
}