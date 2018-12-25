<%@ page pageEncoding="UTF-8" %>
<%@include file="header.jsp" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>educ</title>
    <link rel="stylesheet" href="resources/static/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styles.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Google-Style-Login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Pretty-Header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Pretty-Footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Pretty-Registration-Form.css">
</head>

<body>
	<div class="alert alert-danger" role="alert">
  		Vos identifiants sont incorrects. Veuillez essayer à nouveau!
	</div>
    <h1 class="text-center logo tete">e<span>Learn </span></h1>
    <p class="text-center">Une autre faÃ§on de prendre les cours !</p>
    <div class="login-card"><img src="assets/img/avatar_2x.png" class="profile-img-card">
        <p class="profile-name-card"> </p>
        <form class="form-signin" action="/test/log" method="post"><span class="reauth-email"> </span>
            <input class="form-control" type="text" required="" placeholder="Pseudo" autofocus="" id="inputEmail" name="Pseudo">
            <input class="form-control" type="password" required="" placeholder="Mots de passe" id="inputPassword" name="PassHash">
            <div class="checkbox">
                <div class="checkbox">
                    <label>
                        <input type="checkbox">Se rappeler de moi !</label>
                </div>
            </div>
            <button class="btn btn-primary btn-block btn-lg btn-signin" type="submit">Se connecter</button>
        </form><a href="#" class="forgot-password">Mots de passe oubliÃ©?</a>
        <div id="conrs"><img src="assets/img/Facebook-icon-1.png" width="50"><img src="assets/img/google_PNG19635.png" width="50"></div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>