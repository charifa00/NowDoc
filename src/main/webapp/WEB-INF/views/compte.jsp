<!DOCTYPE html>
<html lang="fr">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Se connecter à mon compte | DabaDoc MA</title>
    <link rel="icon" href="image.ico" type="image/x-icon">
    <link rel="stylesheet" href="/webjars/bootstrap/5.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

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

        input {
            box-shadow: 0 4px 6px rgba(0, 123, 255, 0.4); /* Ombre bleue personnalisée */
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-md navbar-light fixed-top">
        <div class="container">
            <div class="nav-item person-icon me-2">
                <!-- Utilisation de FontAwesome pour l'icône de personne -->
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
                        <a class="btn btn-warning my-sm-0 me-2 btn-custom" href="/connect">Vous êtes un praticien ?</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-light text-white my-sm-0 me-2 btn-custom" href="/medecins/sign_in">Mon Compte</a>
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

    <div class="container mt-5">
        <div class="row ">
            <div class="col-lg-6">
                <h2 class="text-center">Espace Professionnels</h2>
                <ul class="nav nav-pills nav-justified mb-3 mt-3" id="ex1" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link active" id="tab-login" data-bs-toggle="pill" href="#pills-login" role="tab" aria-controls="pills-login" aria-selected="true">Professionnel</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="tab-register" data-bs-toggle="pill" href="#pills-register" role="tab" aria-controls="pills-register" aria-selected="false">Assistante</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
                        <% if (request.getAttribute("error") != null) { %>
                            <div class="alert alert-danger" role="alert">
                                <%= request.getAttribute("error") %>
                            </div>
                        <% } %>
                        <form action="/medecins/sign_in" method="post">
                            <div class="mb-3">
                                <div class="form-outline mb-4">
                                    <label class="form-label fw-bold" for="loginName">Email: </label>
                                    <input type="email" id="loginName" name="email" class="form-control" required />
                                </div>
                                <div class="form-outline mb-2">
                                    <label class="form-label text-start fw-bold" for="loginPassword">Mot de passe:</label>
                                    <input type="password" id="loginPassword" name="motDePasse" class="form-control" required />
                                </div>
                                <div class="d-flex justify-content-between mb-4">
                                    <a href="" class="text-decoration-none">Mot de passe oublié ?</a>
                                </div>
                                <button type="submit" class="btn btn-warning text-white container-fluid btn-block">Se connecter</button>
                            </div>
                            <hr>
                            <a href="/sign_up" class="btn btn-secondary text-white container-fluid btn-block">Inscrivez-vous</a>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="tab-register">
                        <form>
                            <div class="mb-3">
                                <div class="form-outline mb-4">
                                    <label class="form-label fw-bold" for="registerName">Email: </label>
                                    <input type="email" id="registerName" class="form-control" />
                                </div>
                                <div class="form-outline mb-4">
                                    <label class="form-label fw-bold" for="registerPassword">Mot de passe:</label>
                                    <input type="password" id="registerPassword" class="form-control" />
                                </div>
                                <button type="submit" class="btn btn-warning text-white container-fluid btn-block">Se connecter</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 mt-3">
                <div class="container ">
                    <h2 class="text-center">Espace Patients</h2>
                </div>
                <p class="mt-5">Vous avez déjà pris un rendez-vous sur DabaDoc ?</p>
                <hr>
                <a href="/connect" class="btn btn-warning text-white container-fluid btn-block">Accéder à votre espace patient</a>
                <hr>
                <a href="/users/sign_up" class="btn btn-secondary text-white container-fluid btn-block">Inscrivez-vous</a>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
