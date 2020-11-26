

   
   <!-- <h3 class="border-bottom text-center mx-auto shadow-lg p-3 mb-5 bg-white rounded">Ajouter un circuit</h3>-->
   <form id="ajouterf" name="ajouterf" action="" method="post" enctype="multipart/form-data" class="enregistre border col-md-9 mx-auto p-3 rounded ">
        
        <div class=" text-center">
            <div class="">
            <label for="cate">Ajouter Circuits</label>
            
            </div>
        </div>
        <div class="form-row ">
            <div class="form-group col-md-5">
            <label  class="" for="theme">theme</label>
            <input type="text" class="form-control" id="theme"  name="theme">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-5">
            <label for="prixC">Prix</label>
            <input type="text" class="form-control" id="prixC"  name="prixC">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
            <label for="guideC">Guide</label>
                <select id="cate" class="form-control"  name="cate" id="guideC"  name="guideC">
                    <option value="">Choisir un guide</option>
                    <option value="Jack">Jack</option>
                    <option value="Phillipe">Phillipe</option>
                    <option value="Mostapha">Mostapha</option>
                    <option value="Ahmed">Ahmed</option>
                    <option></option>
                    
                </select>
           
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
            <label   for="nbMax">Nombre maximal</label>
            <input type="text" class="form-control" id="nbMax"  name="nbMax">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
            <label for="nbMin">Nombre Minimal</label>
            <input type="text" class="form-control" id="nbMin"  name="nbMin">
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-4">
            <label for="dateDebut">Date de début</label>
            <input type="date" class="form-control" id="dateDebut"  name="dateDebut">
            </div>
            <div class="form-group col-md-4">
            <label for="dateFin">Date de Fin</label>
            <input type="date"  id="dateFin" name="dateFin"  class="form-control">
            </div>
        </div>
        <div class="form-row">
        <div class="form-group col-md-8">
            <label for="imageC">Image du circuit</label>
            <input type="file" class="form-control" id="imageC" name="imageC">
        </div>
        </div>
        
       <!-- <a type="submit"  name="ajouterE" class="btn btn-primary btn-lg"  href='index.php?action=etape.php' role='button'>AJOUTER ETAPE +</a>-->
       <a type="submit"  name="ajouterE" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#etape" role='button'>AJOUTER ETAPE +</a>
        <button type="submit"  name="enregistrerCircuit" class="btn btn-primary  btn-lg ">ENREGISTRER</button>
    </form> 
    <!-- début modal etape-->
    <div class="modal-dialog  modal-dialog-scrollable">
        <div class="modal fade" id="etape" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">etape</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                <form id="ajouterf" name="ajouterf" action="" method="post" enctype="multipart/form-data" class="enregistre p-3 rounded ">
            
                        <div class=" text-center">
                            <div class="">
                            <label for="cate">Ajouter Etape</label>
                            </div>
                        </div>
                       
                        <div class="form-row">
                            <div class="form-group col-md-8">
                            <label for="moyenTransport">Moyen de transport</label>
                            <select id="cate" class="form-control"  name="moyenTransport" id="moyenTransport"  name="guideC">
                                <option value="">Choisir un moyen</option>
                                <option value="avion">Avion</option>
                                <option value="bateau">Bateau</option>
                                <option value="voiture">Voiture</option>
                                <option value="train">Train</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-8">
                            <label for="lieuDepart">Lieu de départ</label>
                            <input type="text" class="form-control" id="lieuDepart"  name="lieuDepart">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                            <label   for="descriptionEtape">Description de l'étape</label>
                            <textarea class="form-control rounded-0" id="descriptionEtape" rows="4" cols="50"></textarea>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                            <label for="dateDebutE">Date de début</label>
                            <input type="date" class="form-control" id="dateDebutE"  name="dateDebutE">
                            </div>
                            <div class="form-group col-md-6">
                            <label for="dateFinE">Date de Fin</label>
                            <input type="date"  id="dateFinE" name="dateFinE"  class="form-control">
                            </div>
                        </div>
                        <div class="form-row">
                        <div class="form-group col-md-10">
                            <label for="imageE">Image de l'étape</label>
                            <input type="file" class="form-control" id="imageE" name="imageE">
                        </div>
                        </div>
                    
                        <!-- <a type="submit"  name="ajouterE" class="btn btn-primary btn-lg"  href='index.php?action=etape.php' role='button'>AJOUTER ETAPE +</a>-->
                        <a type="submit"  name="ajouterE" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#jour" onclick="rendreInvisible('etape')" role='button'>AJOUTER JOUR +</a>
                        <button type="submit"  name="enregistrerCircuit" data-dismiss="modal" class="btn btn-primary  btn-lg">ENREGISTRER</button>
                </form> 
                
                </div>
               
                </div>
            </div>
        </div> <!-- fin modal etape-->
    </div>

    <!-- début model jour -->
    <div class="modal-dialog  modal-dialog-scrollable">
        <div class="modal fade" id="jour" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Jour</h5>
                    <button type="button" class="close"  onclick="rendreVisible('etape')" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                <form id="ajouterf" name="ajouterf" action="" method="post" enctype="multipart/form-data" class="enregistre p-3 rounded ">
            
                        <div class=" text-center">
                            <div class="">
                            <label for="cate">Ajouter Jour</label>
                            </div>
                        </div>
                        <div class="form-row ">
                            
                            <div class="form-group col-md-8">
                            <label for="transportJour">Type de transport</label>
                                    <select id="cate" class="form-control"  name="transportJour" id="transportJour"  name="guideC">
                                        <option value="">Choisir un moyen</option>
                                        <option value="avion">Avion</option>
                                        <option value="bateau">Bateau</option>
                                        <option value="voiture">Voiture</option>
                                        <option value="train">Train</option>
                                    </select>
                            </div>
                            
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-5">
                            <label for="repas">repas</label>
                            <input type="text" class="form-control" id="repas"  name="repas">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                            <label for="hebergement">Hébergement</label>
                            <input type="text" class="form-control" id="hebregement"  name="hebergement">
                            </div>
                        </div>
                       

                        <div class="form-row">
                            <div class="form-group col-md-6">
                            <label for="dateJour">Date</label>
                            <input type="date" class="form-control" id="dateJour"  name="dateJour">
                            </div>
                            
                        </div>
                        
                        
                    <!-- <a type="submit"  name="ajouterE" class="btn btn-primary btn-lg"  href='index.php?action=etape.php' role='button'>AJOUTER ETAPE +</a>-->
                    <a type="submit"  name="ajouterE" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#activite" role='button'  onclick="rendreInvisible('jour')">AJOUTER activité +</a>
                    <button type="submit"  name="enregistrerJour"   onclick="rendreVisible('etape')" data-dismiss="modal"  class="btn btn-primary  btn-lg">ENREGISTRER</button>
                </form> 
                
            </div>
               
            </div>
            </div>
        </div> <!-- fin modal jour-->
    </div> <!-- fin model jour -->

     <!-- début model activité -->
     <div class="modal-dialog  modal-dialog-scrollable">
        <div class="modal fade" id="activite" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Activité</h5>
                    <button type="button" class="close"  onclick="rendreVisible('jour')" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                <form id="ajouterf" name="ajouterf" action="" method="post" enctype="multipart/form-data" class="enregistre p-3 rounded ">
            
                    <div class=" text-center">
                        <div class="">
                        <label for="cate">Ajouter Activité</label>
                        </div>
                    </div>
                    <div class="form-row ">
                        <div class="form-group col-md-6">
                        <label  for="dateActivite">Date Activité</label>
                        <input type="date" class="form-control" id="dateActivite"  name="dateActivite">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                        <label for="heureD">Heure Début</label>
                        <input type="time" class="form-control" id="heure"  name="heureD">
                        </div>
                        <div class="form-group col-md-4">
                        <label for="heureF">Heure de fin</label>
                        <input type="time" class="form-control" id="F"  name="heureF">
                        </div>
                    </div>
                    <div class="form-row ">
                            
                            <div class="form-group col-md-8">
                            <label for="transportJour">Type de transport</label>
                                    <select id="cate" class="form-control"  name="transportJour" id="transportJour"  name="guideC">
                                        <option value="">Choisir un moyen</option>
                                        <option value="avion">Avion</option>
                                        <option value="bateau">Bateau</option>
                                        <option value="voiture">Voiture</option>
                                        <option value="train">Train</option>
                                    </select>
                            </div>
                            
                        </div>
                    <div class="form-row">
                        <div class="form-group col-md-10">
                        <label for="descriptionActivite">Description</label>
                        <textarea class="form-control rounded-0" id="descriptionActivite" rows="4" cols="50"></textarea>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                        <label   for="lieuA">Lieu</label>
                        <input type="text" class="form-control" id="lieuA"  name="lieuA">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                        <label for="typeA">Type</label>
                        <input type="text" class="form-control" id="typeA"  name="typeA">
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                        <label for="lienInternet">lien intrnet</label>
                        <input type="text" class="form-control" id="lienInternet"  name="lienInternet">
                        </div>
                        
                    </div>
                    <div class="form-row">
                    <div class="form-group col-md-10">
                        <label for="imageA">Image de l'activité</label>
                        <input type="file" class="form-control" id="imageA" name="imageA">
                    </div>
                    </div>
                    
                <!-- <a type="submit"  name="ajouterE" class="btn btn-primary btn-lg"  href='index.php?action=etape.php' role='button'>AJOUTER ETAPE +</a>-->
            
                <button type="submit"  name="enregistrerCircuit"   onclick="rendreVisible('jour')" data-dismiss="modal" class="btn btn-primary  btn-lg">ENREGISTRER</button>
            </form> 
                
                </div>
               
                </div>
            </div>
        </div> <!-- fin modal jour-->
    </div> <!-- fin model activité -->
   
    <?php 
     include('../includes/footer.php');
      if(isset($_POST['ajouterf'])){
      $titre=$_POST['titre'];
      $realisateur=$_POST['res'];
      $categorie=$_POST['cate'];
      $duree=$_POST['duree'];
      $prix=$_POST['prix'];
      $url=$_POST['url'];
      $pochette= $_FILES['imageF']['name'];
      $pochette_tmp= $_FILES['imageF']['tmp_name'];
      @move_uploaded_file($pochette_tmp, "films_images/$pochette");

      $requete="INSERT INTO films values(0,?,?,?,?,?,?,?)";
      $stmt = $connexion->prepare($requete);
      $stmt->bind_param("sssisds", $titre,$realisateur,$categorie,$duree,$pochette,$prix,$url);
      $stmt->execute();
      if($stmt){
        echo"<script>alert('Film $connexion->insert_id bien enregistré sur la table')</script>";

        //echo"<script>window.open('index.php?ajouter_film','_self')</script>";

      }
      //mysqli_close($connexion);


    }
    
    ?>

