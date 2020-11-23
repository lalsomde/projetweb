
  window.console = window.console || function(t) {};

  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }

function valider()                                    
      { 
          var name = document.forms["formulaire"]["nom"];               
          var email = document.forms["formulaire"]["Email"];    
          var telephone = document.forms["formulaire"]["telephone"];  
          var prenom =  document.forms["formulaire"]["prenom"];  
          var password = document.forms["formulaire"]["passeword"];  
          var pays = document.forms["formulaire"]["pays"];  
         var numPorte = document.forms["formulaire"]["numPorte"]; 
         var cPostal= document.forms["formulaire"]["cPostal"]; 
         var province = document.forms["formulaire"]["province"]; 
         var dateNaissance = document.forms["formulaire"]["dateNaissance"]; 
          var numRue = document.forms["formulaire"]["numRue"]; 
        var ville = document.forms["formulaire"]["ville"];  
        var numPasseport = document.forms["formulaire"]["numPasseport"];  

          if (name.value == "")                                  
          { 
              alert("Mettez votre nom."); 
              name.focus(); 
              return false; 
          }  
        if (prenom.value == "")                                  
          { 
              alert("Mettez votre prenom."); 
              prenom.focus(); 
              return false; 
          }    
          if (pays.value == "")                               
          { 
              alert("Mettez  le nom de votre pays."); 
              pays.focus(); 
              return false; 
          }        
          if (email.value == "")                                   
          { 
              alert("Mettez une adresse email valide."); 
              email.focus(); 
              return false; 
          }    
          if (email.value.indexOf("@", 0) < 0)                 
          { 
             alert("Mettez une adresse email valide."); 
              email.focus(); 
              return false; 
          }    
          if (email.value.indexOf(".", 0) < 0)                 
          { 
              alert("Mettez une adresse email valide."); 
              email.focus(); 
              return false; 
          }    
          if (telephone.value == "")                           
          { 
              alert("Mettez votre numéro de téléphone."); 
              phone.focus(); 
              return false; 
          } 
          if (telephone.value< 10 || telephone.value > 10 )                 
          { 
             alert("Mettez un numero de télephome valide."); 
              email.focus(); 
              return false; 
          }    
          if (password.value == "")                        
          { 
              alert("Saisissez votre mot de passe"); 
              password.focus(); 
              return false; 
          }    
          if (cPostal.value == "")                        
          { 
              alert("Saisissez un code Postal valide"); 
              cPostal.focus(); 
              return false; 
          } 
          if (numPasseport.value == "")                        
          { 
              alert("Saisissez votre numéro de passeport "); 
              numPasseport.focus(); 
              return false; 
          }  
          if (numRue.value == "")                        
          { 
              alert("Saisissez votre numéro de rue"); 
              numRue.focus(); 
              return false; 
          }  
          if (numPorte.value == "")                        
          { 
              alert("Saisissez numero de porte valide "); 
              numPorte.focus(); 
              return false; 
          }  
          if (dateNaissance.value == "")                        
          { 
              alert("choisir date de naissance"); 
              dateNaissance.focus(); 
              return false; 
          }  
         turn false; 
          } 
          return true; 
      }
