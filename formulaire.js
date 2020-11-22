
  window.console = window.console || function(t) {};

  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
/*
var username = document.getElementById("username");
	var passw = document.getElementById("password");
	var email1 = document.getElementById("Email");
	var email2 = document.getElementById("ConfirmationEmail");
	var MessageErreur = '';
	var chargeSelect = document.getElementById("menu"); 
   
	if (!username.value) {
		MessageErreur = MessageErreur+"<br>Le nom d'utilisateur est obligatoire!";
	}
	if(!passw.value) {
		MessageErreur = MessageErreur+"<br> le mot de passe  est obligatoire!";
	}
	if(!email1.value) {
		MessageErreur = MessageErreur+"<br> une adresse email est obligatoire!";
	}
	if (!email2.value) {
		MessageErreur =  MessageErreur+"<br>une confirmation d'adresse email est obligatoire!";
	}
	
	if (MessageErreur) {
		e.preventDefault();
		document.getElementById("MessageErreur").innerHTML = MessageErreur;
		return true;
	}

 
	function valider() {

  if( !username.value|| !passw.value ) {
  
    alert("vous devez remplire la formulaire avant de l'envoyer !");
    window.location.reload(true);
    
	
	
	 
  
  }*/
  /*|| !email1.value || !email2.value */