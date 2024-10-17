<!DOCTYPE html>
<html lang="fr">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription | DabaDoc MA</title>
    <link rel="icon" href="images.ico" type="image/x-icon">
    <link rel="stylesheet" href="/webjars/bootstrap/5.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        .navbar {
                           background-color: #0596de;
                           height: 60px;
                           padding: 0;
                           margin: 0 !important;
                       }
                       .dropdown-menu {
                           background-color: #0596de;
                       }
                       .dropdown-item {
                           color: white;
                           background-color: #0596de;
                       }
                       .dropdown-item:hover {
                           background-color: #f6f7f9;
                       }
                        body {
                                   margin-top: 70px; 
                               }
                       @media (min-width: 767px) {
                           .person-icon {
                               display: none;
                           }
                           .btn-custom {
                               width: auto;
                           }
                       }

                       @media (max-width: 768px) {
                           .person-icon {
                               display: inline-block;
                           }
                           .btn-custom {
                               width: 100%;
                               background-color: #0596de;
                               color: white;
                           }
                       }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-light fixed-top">
        <div class="container">
            <div class="nav-item person-icon me-2">
                <a class="btn btn-outline-light" href="/medecins/sign_in"><i class="fas fa-user"></i></a>
            </div>
            <a class="navbar-brand text-white" href="/ma">
                <h1 class="text-start text-sm-center">Dabadoc</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="btn btn-warning my-sm-0 me-2 btn-custom fw-bold" href="/connect">Vous êtes un praticien ?</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-light text-white my-sm-0 me-2 btn-custom fw-bold" href="/medecins/sign_in">Mon Compte</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-light my-sm-0 me-2 fw-bold btn-custom" href="/medecins/sign_in">عربي</a>
                    </li>
                    <li class="nav-item">
                        <div class="dropdown">
                            <button class="btn btn-outline-light btn-custom fw-bold" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown">
                                Maroc
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">Maroc</a>
                                <a class="dropdown-item" href="#">Algérie</a>
                                <a class="dropdown-item" href="#">Tunisie</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

<div class="container-fluid p-5 mt-3">
    <h2 class="text-i">Inscription</h2>
    <form method="post" action="/savePatient">
        <!-- Form fields as before -->
        <div class="mb-3">
            <label for="prenom" class="form-label fw-bold"><abbr title="Requis">*</abbr>Prénom :</label>
            <input type="text" id="prenom" name="prenom" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="nomdefamille" class="form-label fw-bold"><abbr title="Requis">*</abbr>Nom de Famille :</label>
            <input type="text" id="nomdefamille" name="nomdefamille" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label fw-bold"><abbr title="Requis">*</abbr>Email :</label>
            <input type="email" id="email" name="email" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="pays" class="form-label fw-bold"><abbr title="Requis">*</abbr>Pays :</label>
            <select id="pays" name="pays" class="form-control" required>
                <option value="Maroc">Maroc</option>
                <option value="Tunisie">Tunisie</option>
                <option value="Algérie">Algérie</option>
                <option value="Sénégal">Sénégal</option>
                <option value="Côte d'Ivoire">Côte d'Ivoire</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="motDePasse" class="form-label fw-bold"><abbr title="Requis">*</abbr>Mot de Passe :</label>
            <input type="password" id="motDePasse" name="motDePasse" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="confirmationMotDePasse" class="form-label fw-bold"><abbr title="Requis">*</abbr>Confirmation Mot de Passe :</label>
            <input type="password" id="confirmationMotDePasse" name="confirmationMotDePasse" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="numeroPortable" class="form-label fw-bold"><abbr title="Requis">*</abbr>Numéro Portable :</label>
            <div class="input-group">
                <span class="input-group-text" id="drapeau"></span>
                <input type="text" id="numeroPortable" name="numeroPortable" class="form-control" required>
            </div>
        </div>
        <div class="form-check row mb-3">
            <div class="col-md-12">
                <input class="form-check-input" type="checkbox" value="" id="conditionsUtilisation" required>
                <label class="form-check-label" for="conditionsUtilisation">
                    <abbr title="Requis">*</abbr> Vous avez lu et accepté <a href="#">les conditions d'utilisation</a>
                </label>
            </div>
        </div>
        <button type="submit" class="btn btn-warning">Valider</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
