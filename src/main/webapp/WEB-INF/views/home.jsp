<!DOCTYPE html>
<html lang="fr">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription Professionnel de Santé | DabaDoc MA</title>
    <link rel="icon" href="image.ico" type="image/x-icon">
    <link rel="stylesheet" href="/webjars/bootstrap/5.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        .navbar {
            background-color: #0596de;
            height: 70px;
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
            margin-top: 70px; /* Ajustez selon la hauteur réelle de votre navbar */
        }
        @media (min-width: 767px) {
            .btn-custom {
                width: auto;
            }
        }
        @media (max-width: 768px) {
            .btn-custom {
                width: 100%;
                background-color: #0596de;
                color: white;
            }
        }
        .image1 {
            width: 180px;
            height: 50px;
        }
        .bg {
            background-color: #1ab2ff;
        }
      .box {
          background: linear-gradient(to right, #18a5ed,#5dc8f4);
          padding: 0.5px;
          border: 1px  gray;
          border-radius: 6px;
      }

    </style>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/ma">
            <img class="image1 img-fluid" src="https://cdn.dabadoc.com/assets/10_years_dabadoc-957d29e1f4a9b5d2c9aabacc102f37e721bd85f4278c5e349d2c0ca106bb8670.png" alt="DabaDoc Logo">
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

<div class="bg p-3">
    <h1 class="text-white fw-bold container">Prenez rendez-vous avec votre médecin au cabinet ou en vidéo</h1>

    <form class="simple_form home-main-form box mt-3 m-5" id="new_search" autocomplete="off" name="search_form" action="/medecins/recherche" method="GET">
        <div class="d-flex justify-content-center align-items-center flex-wrap col-12">
            <div class="m-2">
                <input type="radio" class="btn-check" name="options" id="btn-check-cabinet" autocomplete="off">
                <label class="btn btn-outline-light fw-bold" for="btn-check-cabinet"><i class="bi bi-building"></i> Au Cabinet</label>
            </div>
            <div class="m-2">
                <input type="radio" class="btn-check" name="options" id="btn-check-video" autocomplete="off">
                <label class="btn btn-outline-light fw-bold" for="btn-check-video"><i class="bi bi-camera-video"></i> En Vidéo</label>
            </div>
            <div class="m-2">
                <input type="radio" class="btn-check" name="options" id="btn-check-domicile" autocomplete="off">
                <label class="btn btn-outline-light fw-bold" for="btn-check-domicile"><i class="bi bi-house"></i> A Domicile</label>
            </div>
            <div class="m-2">
                <input type="radio" class="btn-check" name="options" id="btn-check-clinique" autocomplete="off">
                <label class="btn btn-outline-light fw-bold" for="btn-check-clinique"><i class="bi bi-hospital"></i> À La Clinique</label>
            </div>
        </div>
        <div class="row mt-2 m-5 g-2">
            <div class="col-md-4">
                <input class="form-control p-3" type="text" name="specialite" id="search_specialite" placeholder="Spécialité" />
            </div>
            <div class="col-md-6">

                  <select class="form-control select2 p-3" name="search[city_id]" id="search_city_id">
                        <option value="Agadir">Agadir</option>
                        <option value="Ait Melloul">Ait Melloul</option>
                        <option value="Al Hoceima">Al Hoceima</option>
                        <option value="Azrou">Azrou</option>
                        <option value="Beni Mellal">Beni Mellal</option>
                        <option value="Berkane">Berkane</option>
                        <option value="Casablanca">Casablanca</option>
                        <option value="Chefchaouen">Chefchaouen</option>
                        <option value="Dakhla">Dakhla</option>
                        <option value="El Jadida">El Jadida</option>
                        <option value="Errachidia">Errachidia</option>
                        <option value="Essaouira">Essaouira</option>
                        <option value="Fès">Fès</option>
                        <option value="Guelmim">Guelmim</option>
                        <option value="Ifrane">Ifrane</option>
                        <option value="Kénitra">Kénitra</option>
                        <option value="Khemisset">Khemisset</option>
                        <option value="Khouribga">Khouribga</option>
                        <option value="Laâyoune">Laâyoune</option>
                        <option value="Larache">Larache</option>
                        <option value="Marrakech">Marrakech</option>
                        <option value="Meknès">Meknès</option>
                        <option value="Mohammédia">Mohammédia</option>
                        <option value="Nador">Nador</option>
                        <option value="Ouarzazate">Ouarzazate</option>
                        <option value="Oujda">Oujda</option>
                        <option value="Rabat">Rabat</option>
                        <option value="Safi">Safi</option>
                        <option value="Salé">Salé</option>
                        <option value="Sidi Kacem">Sidi Kacem</option>
                        <option value="Tan-Tan">Tan-Tan</option>
                        <option value="Tanger">Tanger</option>
                        <option value="Taza">Taza</option>
                        <option value="Témara">Témara</option>
                        <option value="Tétouan">Tétouan</option>
                        <option value="Tiznit">Tiznit</option>
                    </select>

            </div>
            <div class="col-md-2 col-sm-12">
                  <a class="btn btn-warning btn-block p-3"  href="/medecins/recherche"><i class="fa fa-search"></i> Rechercher</a>
            </div>
        </div>
    </form>



</div>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
