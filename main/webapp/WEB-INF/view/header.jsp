<%@ page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>educ</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    
    
    
    <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="/assets/css/styles.css">
    <link rel="stylesheet" href="/assets/css/Google-Style-Login.css">
    <link rel="stylesheet" href="/assets/css/Pretty-Header.css">
    <link rel="stylesheet" href="/assets/css/Pretty-Footer.css">
    <link rel="stylesheet" href="/assets/css/Pretty-Registration-Form.css">
</head>

<body>
    <nav class="navbar navbar-default custom-header navbar-fixed-top" id="menu">
        <div class="container-fluid">
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="#">e<span>Learn </span> </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav links">
                    <li class="active" role="presentation"><a href="/">Acceuil </a></li>
                    <li role="presentation">
                        <a href="#" class="custom-navbar"> <span class="badge">new</span>Actualités</a>
                    </li>
                    <li role="presentation"><a href="/course/all">Tous les cours </a></li>
                    <li role="presentation"><a href="etablissements">Etablissements </a></li>
                    <li role="presentation"><a href="#">A propos</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#"> <span class="caret"></span><img src="/assets/img/avatar_2x.png" class="dropdown-image"></a>
                        <ul class="dropdown-menu dropdown-menu-right" role="menu">
                            <li role="presentation"><a href="signup"> S'inscrire </a></li>
                            <li role="presentation" class="active"><a href="login">Se connecter</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
