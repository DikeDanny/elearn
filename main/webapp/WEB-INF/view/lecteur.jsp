<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="headerD.jsp" %>

    <div></div>
    <h2 class="text-center logo tete">Nom du <span>Cours !</span></h2>
    <div>
        <ul class="nav nav-tabs">
            <li class="active"><a role="tab" data-toggle="tab" href="#tab-11">Cours </a></li>
            <li><a role="tab" data-toggle="tab" href="#tab-22">Progression </a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane fade in active" role="tabpanel" id="tab-11">
                <div class="row">
                    <div class="col-md-3">
                        <div>
                            <ul class="nav nav-tabs nav-pills nav-stacked">
                                <li class="active"><a href="#tab-1" role="tab" data-toggle="tab">First Tab</a></li>
                                <li><a href="#tab-2" role="tab" data-toggle="tab">Second Tab</a></li>
                                <li><a href="#tab-3" role="tab" data-toggle="tab">Third Tab</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" role="tabpanel" id="tab-1">
                                    <p>First tab content.</p>
                                </div>
                                <div class="tab-pane" role="tabpanel" id="tab-2">
                                    <p>Second tab content.</p>
                                </div>
                                <div class="tab-pane" role="tabpanel" id="tab-3">
                                    <p>Third tab content.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <nav>
                            <ul class="pager nav">
                                <li class="previous active"><a href="#" data-toggle="tab">Pr閏閐ent </a></li>
                                <li class="next"><a href="#" data-toggle="tab">Suivant </a></li>
                            </ul>
                        </nav>
                        <c:if test="${!empty liencours }">
                        <div class="tab-content">
                            <div id="vid" class="tab-pane active">
                                <div class="embed-responsive embed-responsive-16by9">
                                    <iframe class="embed-responsive-item" src=<c:out value="${liencours }"></c:out> width="70" height="50"></iframe>
                                </div>
                            </div>
                            <div id="pdf" class="tab-pane">
                                <p>Paragraph</p>
                                <div class="embed-responsive embed-responsive-16by9">
                                    <iframe class="embed-responsive-item" src="pdfgratuit.pdf" width="500" height="800" type="application/pdf"></iframe>
                                </div>
                            </div>
                        </div>
                        </c:if>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" role="tabpanel" id="tab-22">
                <p>Second tab content.</p>
            </div>
        </div>
    </div>
    <footer>
        <div class="row">
            <div class="col-md-4 col-sm-6 footer-navigation">
                <h3><a href="#">e<span>Learn </span></a></h3>
                <p class="links"><a href="#">Acceuil </a><strong> 路 </strong><a href="#">Actualit茅 </a><strong> 路 </strong><a href="#">Tous les cours</a><strong> 路 </strong><a href="#">Etablissements </a><strong> 路 </strong><a href="#">Mes cours</a><strong> 路 </strong>
                    <a
                    href="#">A propos</a>
                </p>
                <p class="company-name">jmk 漏 2018</p>
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