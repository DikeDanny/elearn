<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription effectuée</title>
</head>
<body>
	Votre inscription a bien été effectuée. Retour à la page d' <a href="/">Accueil</a> pour vous connecter.
	
	 	<p>Nom : ${ user.nom }</p>

        <p>Prénom : ${ user.prenoms }</p>
        
        <p>pseudo : ${ user.pseudo }</p>
        
        <p>passHash : ${ user.passHash }</p>
        
        <p>grade : ${ user.grade }</p>
        
        <p>Email : ${ user.mail }</p>

</body>
</html>