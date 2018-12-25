<%@page import="javax.persistence.metamodel.SetAttribute"%>
<%@ page pageEncoding="UTF-8" %>

<%@ include file="header.jsp" %>

    <div id="corps">
        <h1 class="text-center logo">Tous les <span>Cours !</span></h1>
        <div class="col-md-3 ruban">
            <h1 class="text-center text-info logo">Afficher les résultats</h1>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Thêmes </h3></div>
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item"><span>Economie et Finance</span></li>
                        <li class="list-group-item"><span>Informatique </span></li>
                    </ul>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Etablissements </h3></div>
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item"><span>ESATIC </span></li>
                        <li class="list-group-item"><span>IMT </span></li>
                        <li class="list-group-item"><span>INPT </span></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="col-md-9">
                <div class="row une">
                    <c:if test="${!empty mescours}">
						<c:forEach items="${mescours }" var="cours">
						<div class="col-md-4"><img src=<c:out value="${cours.getLienimg()}"></c:out> width="200" height="300"/>
					                        <h1 class="text-center"><c:out value="${cours.intitule }"></c:out></h1>
					                        <div class="btn-group btn-group-lg" role="group">
					                        <form action="/lecteurR" method="get" name="liencours" value=<c:out value="${cours.getLienCours()}"></c:out>  >
					                            <input  name="liencours" type="hidden" value=<c:out value="${cours.getLienCours() }"></c:out>/>
					                            <input  class="btn btn-warning btn-lg" type="submit" value="Lire" >
					          
					                        </form>
					                        </div>
					                    </div>
							
						</c:forEach>
					</c:if>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="row">
            <div class="col-md-4 col-sm-6 footer-navigation">
                <h3><a href="#">e<span>Learn </span></a></h3>
                <p class="links"><a href="#">Acceuil </a><strong> Â· </strong><a href="#">Actualités </a><strong> Â· </strong><a href="#">Tous les cours</a><strong> Â· </strong><a href="#">Etablissements </a><strong> Â· </strong><a href="#">Mes cours</a><strong> Â· </strong>
                    <a
                    href="#">A propos</a>
                </p>
                <p class="company-name">jmk Â© 2018</p>
            </div>
            <div class="col-md-4 col-sm-6 footer-contacts">
                <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                    <p><span class="new-line-span">21 Revolution Street</span> Paris, France</p>
                </div>
                <div><i class="fa fa-phone footer-contacts-icon"></i>
                    <p class="footer-center-info email text-left"> +1 555 123456</p>
                </div>
                <div><i class="fa fa-envelope footer-contacts-icon"></i>
                    <p> <a href="#" target="_blank">support@elearn.edu</a></p>
                </div>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-4 footer-about">
                <h4>A propos</h4>
                <p> eLearn est une plateforme d'education en ligne
                </p>
                <div class="social-links social-icons"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-github"></i></a></div>
            </div>
        </div>
        </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>