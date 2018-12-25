<%@include file="header.jsp" %>


    <h1 class="text-center logo tete">e<span>Learn </span></h1>
    <p class="text-center">Une autre façon de prendre les cours !</p>
    <div class="row register-form">
        <div class="col-md-8 col-md-offset-2">
            <form modelAttribute="utilisateur" class="form-horizontal custom-form" method="post" action="/test/ajouterUtilisateur">
                <h1>Formulaire d'inscription</h1>
                <p>(Les champs marqués d'une astérix sont obligatoires)</p>
                <div class="alert alert-danger" role="alert">
  					Assurez vous d'avoir bien rempli votre nom et que vos mots de passe correspondent entre eux
				</div>
                <div id="conrs">
                    <p>S'inscrire avec Facebook ou Google :</p><img src="assets/img/Facebook-icon-1.png" width="50"><img src="assets/img/google_PNG19635.png" width="50">
                    <p id="ou">Ou </p>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">Pseudo <span class="requis">*</span> </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" name="pseudo" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">Nom <span class="requis">*</span> </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" name="nom" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">Prénoms </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" name="prenoms">
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="email-input-field">Email <span class="requis">*</span> </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="email" name="mail" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="pawssword-input-field">Mot de passe <span class="requis">*</span></label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="password" name="passHash" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label">Retapez le mot de passe <span class="requis">*</span></label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="password" name="repass" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">Grade </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" name="grade">
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="dropdown-input-field">Sexe </label>
                    </div>
                    <div class="col-sm-4 input-column">
                        <div class="dropdown">
                             <select name="sexe">
								  <option value="masculin">Masculin</option>
								  <option value="feminin">Féminin</option>
							</select> 
                        </div>
                    </div>
                </div>
                
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="accord" required>J'ai lu et j'accepte les termes et conditions d'utilisation <span class="requis">*</span></label>
                </div>
                <button class="btn btn-default submit-button" type="submit">Envoyer </button>
            </form>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>