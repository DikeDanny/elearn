<%@page import="com.example.elearning.service.ServiceNotifiationImpl"%>
<%@include file="header.jsp" %>

	</ul>
    <h1 class="text-center logo tete">e<span>Learn </span></h1>
    <p class="text-center">Une autre façon de prendre les cours !</p>
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