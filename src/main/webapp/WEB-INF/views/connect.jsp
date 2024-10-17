<!DOCTYPE html>
<html lang="fr">

<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rejoignez vos confrères sur DabaDoc Connect+</title>
    <link rel="icon" href="images.ico" type="image/x-icon">
    <link rel="stylesheet" href="/webjars/bootstrap/5.2.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        .navbar {
            background-color: #0596de;
            height: 60px;
            padding: 0;
        }

        #mon-compte {
            background-color: #00A3D4;
            padding: 40px 0;
        }

        body {
            margin-top: 20px;
        }

        .bg {
            background-image: url('https://info.dabadoc.com/asset/188:hero-connect');
            height: 102vh;
            background-size: cover;
            background-repeat: no-repeat;
        }

        @media (max-width: 1000px) {
            .bg {
                background-color: #aac5ea;
                background-image: none;
                weight: 300px;
                height: 300px;
            }
        }

        .btn-custom {
            width: 100%;
        }

        @media (min-width: 768px) {
            .btn-custom {
                width: auto;
            }
        }


        @media (min-width: 994px) {
            .ins {
                position: absolute;
                top: 150px;
                left: 20px;
            }
        }

        .ins {
            position: absolute;
            top: 100px;
        }

        .stats-container {
            background-color: #f8f9fa;
            padding: 25px;
        }

        .border-boxs {
            border: 1px gray;
            border-radius: 6px;
            box-shadow: 0 2px 10px #c8d7e7;
        }

        .stats-box {
            background-color: white;
            border: 1px solid rgb(239, 213, 213);
            box-shadow: 0 1px 4px rgba(173, 173, 173, 0.1);
            padding: 30px;
            height: 100%;
            margin: 0;
        }

        .stats-box h3 {
            color: #0596de;
            font-size: 3rem;
            font-family: 'Arial', sans-serif;
            margin-bottom: 10px;
        }

        .stats-box p {
            margin: 0;
            font-size: 1rem;
            color: #6c757d;
        }
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-md navbar-light fixed-top">
        <div class="container">
            <a class="navbar-brand text-white" href="/ma">
                <h1 class="text-start">Dabadoc</h1>
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
                </ul>
            </div>
        </div>
    </nav>

    <div class="bg">
        <div class="row">
            <div class="col d-flex align-items-center justify-content-center">
                <div class="ins itemenu text-sm-start text-md-center text-lg-start mt-2">
                    <h1 class="text-4xl fw-bold text1">Vous êtes professionnel<br> de santé ?</h1>
                    <p class="text-secondary">Comme des milliers de médecins, rejoignez la plateforme santé<br> n°1 en Afrique.</p>
                    <a href="/sign_up" class="btn btn-warning btn-custom btn-lg fw-bold">Je m'inscris</a>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid text-center stats-container ">
        <h2 class="fw-bold">DabaDoc en chiffres</h2>
        <p>Accédez à la plateforme santé n°1 en Afrique</p>
    </div>

    <div class="container">
        <div class="row justify-content-center text-center g-0 border-boxs fw-bold d-flex align-items-stretch">
            <div class="col-md-4 col-sm-12">
                <div class="stats-box">
                    <h3 class="fw-bold">95%</h3>
                    <p>de médecins satisfaits</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-12">
                <div class="stats-box">
                    <h3 class="fw-bold">+10.000</h3>
                    <p>médecins et professionnels de santé</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-12">
                <div class="stats-box">
                    <h3 class="fw-bold">12M</h3>
                    <p>de patients satisfaits</p>
                </div>
            </div>
        </div>
    </div>
<div>
<h1 class=" container-fluid mt-5  my-5 ms-2 me-2 text-center fw-bold">Pourquoi choisir DabaDoc Connect + ?</h1>
</div>

<div class="container mt-5">
  <div class="row align-items-center">
    <div class="col-lg-6">
      <h2 class=" fw-bold text-dark">Un cabinet plus visible, grâce à la présence puissante de DabaDoc sur le digital</h2>
      <p class="mt-3 text-secondary">Les patients peuvent vous trouver facilement grâce au référencement naturel sur les moteurs de recherche.</p>
    </div>
    <div class="col-lg-6 mt-4 mt-lg-0 text-center">
      <img class="img-fluid" width="490" src="https://info.dabadoc.com/asset/147:f1png" alt="Un cabinet plus visible">
    </div>
  </div>
</div>

<div class="container mt-5">
  <div class="row align-items-center">
    <div class="col-lg-6 order-lg-2">
      <h2 class=" fw-bold text-dark">Davantage de flux grâce à la prise de RDV 24/24</h2>
      <p class="mt-3 text-secondary">Profitez d'un profil personnalisé qui regroupe toutes les informations concernant votre cabinet, ainsi que les créneaux horaires disponibles dans votre agenda.</p>
    </div>
    <div class="col-lg-6 order-lg-1 mt-4 mt-lg-0 text-center">
      <img class="img-fluid" width="490" src="https://info.dabadoc.com/asset/148:f2png" alt="Davantage de flux grâce">
    </div>
  </div>
</div>

<div class="container mt-5">
  <div class="row align-items-center">
    <div class="col-lg-6">
      <h2 class=" fw-bold text-dark">Accès illimité à la vidéo consultation</h2>
      <p class="mt-3 text-secondary">Offrez à votre patientèle la possibilité de vous consulter à distance, via la vidéo-consultation pré-payée et 100% sécurisée.</p>
    </div>
    <div class="col-lg-6 mt-4 mt-lg-0 text-center">
      <img class="img-fluid" width="490" src="https://info.dabadoc.com/asset/198:website-images-1400x800-1png" alt="vidéo consultation">
    </div>
  </div>
</div>

<div class="container mt-5">
  <div class="row align-items-center">
    <div class="col-lg-6 order-lg-2">
      <h2 class="h2 fw-bold text-dark">Confirmations et rappels de RDV</h2>
      <p class="mt-3 text-secondary">Afin de réduire les rendez-vous non honorés, DabaDoc envoie systématiquement aux patients ayant pris rendez-vous un SMS de confirmation, puis un SMS de rappel la veille de la consultation prévue.</p>
    </div>
    <div class="col-lg-6 order-lg-1 mt-4 mt-lg-0 text-center">
      <img class="img-fluid" width="490" src="https://info.dabadoc.com/asset/150:f4png" alt="Confirmations et rappels de RDV">
    </div>
  </div>
</div>

<div class="container mt-5">
  <div class="row align-items-center">
    <div class="col-lg-6">
      <h2 class="h2 fw-bold text-dark">Agenda intelligent</h2>
      <p class="mt-3 text-secondary">DabaDoc met à la disposition de votre cabinet un agenda intelligent qui synchronise les rendez-vous reçus à travers la plateforme, et les rendez-vous pris directement au cabinet.</p>
    </div>
    <div class="col-lg-6 mt-4 mt-lg-0 text-center">
      <img class="img-fluid" width="490" src="https://info.dabadoc.com/asset/151:f5png" alt="Agenda intelligent">
    </div>
  </div>
</div>






    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
