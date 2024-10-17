<!DOCTYPE html>
<html lang="fr">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription Professionnel de Santé | DabaDoc MA</title>
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
                           margin-top: 70px; /* Ajustez selon la hauteur réelle de votre navbar */
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
        input{
                          box-shadow: 0 4px 6px rgba(0, 123, 255, 0.4); /* Ombre bleue personnalisée */
                      }
        select{
                                  box-shadow: 0 4px 6px rgba(0, 123, 255, 0.4); /* Ombre bleue personnalisée */
                              }
             #verticale-line{
                   border-left: 1px solid silver; /* Changez l'épaisseur ici pour rendre la ligne fine */
                    position: absolute;
                    left: 70%;
                      height: 500px;
                       background-color: transparent; /* Pas nécessaire si vous utilisez border-left */}
             .divider {
                 width: 1px;
                 background-color: #ccc;
                 height: 100%; /* Ajustez la hauteur selon vos besoins */
             }
            ol.circle-list {
            counter-reset: list-counter;
            list-style: none;
            padding-left: 0;
        }
            ol.circle-list li {
            counter-increment: list-counter;
            margin-bottom: 10px;
            position: relative;
            padding-left: 40px;
            font-size: 18px;
        }
            ol.circle-list li::before {
            content: counter(list-counter);
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            background-color: #169A23;
            color: white;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 18px;
            font-weight: bold;
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
   <div class="container mt-10  ">
         <header>
              <h3 class="text text-center fw-bold " >Inscription Professionnel de Santé</h3>
              <br>
        </header>
  </div>
<div class="row ">

<div class="col-md-1"></div>

  <div class="col-md-7">

      <form action="/saveMedecin" method="post">

          <div class="row">
              <div class="col-md-4">
                <label for="titre" class="form-label fw-bold"><abbr title="Requis">*</abbr>Titre :</label>
                <select id="titre" name="titre" class="form-control"  required>
                    <option value="Dr">Dr</option>
                    <option value="Prof" selected>Prof</option>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <label for="prenom" class="form-label fw-bold"><abbr title="Requis">*</abbr>Prénom :</label>
                <input type="text" id="prenom" name="prenom" class="form-control"  required>
            </div>

            <div class="col-md-1"></div>

            <div class="col-md-4">
                <label for="nom" class="form-label fw-bold"><abbr title="Requis">*</abbr>Nom :</label>
               <input type="text" id="nom" name="nom" class="form-control"  required>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <label for="email" class="form-label fw-bold"><abbr title="Requis">*</abbr>Email :</label>
                <input type="email" id="email" name="email" class="form-control"  required>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-12">
                <div class="control-group">
                    <div class="controls">
                        <small>Nous ne divulguerons pas votre adresse email. Celle-ci nous sert uniquement à vous communiquer des informations importantes.</small>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-4">
                <label for="motDePasse" class="form-label fw-bold"><abbr title="Requis">*</abbr>Mot de Passe :</label>
                <input type="password" id="motDePasse" name="motDePasse" class="form-control"  required>
            </div>
          <div class="col-md-1"></div>
            <div class="col-md-4">
                <label for="confirmationMotDePasse" class="form-label fw-bold"><abbr title="Requis">*</abbr>Confirmation Mot de Passe :</label>
                <input type="password" id="confirmationMotDePasse" name="confirmationMotDePasse" class="form-control"  required>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-12">
                <div class="control-group">
                    <div class="controls">
                        <small>Choisissez un mot de passe pour votre compte DabaDoc. Le mot de passe doit comporter au moins 8 caractères</small>
                    </div>
                </div>
            </div>
        </div>
      <hr class="my-4">
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="specialites" class="form-label fw-bold"><abbr title="Requis">*</abbr>Spécialités :</label>
                <select id="specialites" name="specialites" class="form-control"  required>
                    <option value="Cardiologie">Cardiologie</option>
                    <option value="Dermatologie">Dermatologie</option>
                    <option value="Gynécologie">Gynécologie</option>
                    <option value="Pédiatrie">Pédiatrie</option>
                </select>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <label for="pays" class="form-label fw-bold "><abbr title="Requis">*</abbr>Pays :</label>
                <select id="pays" name="pays" class="form-control"  required>
                    <option value="Maroc">Maroc</option>
                    <option value="Tunisie">Tunisie</option>
                    <option value="Algérie">Algérie</option>
                    <option value="Sénégal">Sénégal</option>
                    <option value="Côte d'Ivoire">Côte d'Ivoire</option>
                </select>

            </div>
         </div>
  <div class="row mb-3">

              <div class="col-md-4">
                    <label for="numeroRueCabinet" class="form-label fw-bold">
                        <abbr title="Requis">*</abbr>Numéro et rue du cabinet:
                    </label>
                    <textarea id="numeroRueCabinet" name="numeroRueCabinet" required></textarea>
                </div>
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <label for="ville" class="form-label fw-bold"><abbr title="Requis">*</abbr>Ville :</label>
                <select id="ville" name="ville" class="form-control" required>
                </select>
            </div>

        </div>

        <div class="row mb-3">
            <div class="col-md-4">
                <label for="numeroTelephoneCabinet" class="form-label fw-bold"><abbr title="Requis">*</abbr>Numéro de Téléphone Cabinet :</label>
                <div class="input-group">
                    <span class="input-group-text" id="drapeau"></span>
                    <input type="text" id="numeroTelephoneCabinet" name="numeroTelephoneCabinet" class="form-control" required>
                </div>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <label for="numeroPortable" class="form-label fw-bold"><abbr title="Requis">*</abbr>Numéro Portable :</label>
                <input type="text" id="numeroPortable" name="numeroPortable" class="form-control" required>
            </div>
        </div>

       <div class="form-check row mb-3">
            <div class="col-md-12">
               <input class="form-check-input" type="checkbox" value="" id="professionneldesanté " required>
               <label class="form-check-label " for="flexCheckestprofessionnel"><abbr title="Requis">*</abbr>
                 Je certifie sur l’honneur être un professionnel de santé
               </label>
            </div>
       </div>
       <div class="col-md-1"></div>

        <div class="row mb-3">
            <div class="col-md-12 d-grid gap-2">
                <input type="submit" value="soumettre" class="btn btn-success btn-lg ">
            </div>
        </div>


      </form>
  </div>
<div class="col-auto d-flex justify-content-center">
      <div class="divider"></div>
  </div>

    <div class="col">
      <h3 class="text text-center">Pour que votre profil soit visible sur DabaDoc</h3>
      <hr class="my-3">
      <div class="container mt-5">
              <ol class="circle-list">
                  <li>Créez votre profil DabaDoc</li>
                  <hr class="my-3">
                  <li>Un membre de l’équipe DabaDoc vous contactera pour confirmer votre compte et compléter votre abonnement</li>

              </ol>
          </div>
   </div>

 </div>
</div>
<div class="text-center text-success">
 ${messagejsp}
 </div>
</div>

</div>



<footer>
</footer>

<script>
    $(document).ready(function() {
        $('form').submit(function(event) {
            let isValid = true;
            if (!isValid) {
                event.preventDefault();
            }
        });

        $('#pays').change(function() {
            var pays = $(this).val();
            var villes = {
                'Maroc': ['Casablanca', 'Rabat', 'Marrakech'],
                'Tunisie': ['Tunis', 'Sousse', 'Sfax'],
                'Algérie': ['Alger', 'Oran', 'Constantine'],
                'Sénégal': ['Dakar', 'Thiès', 'Saint-Louis'],
                'Côte d\'Ivoire': ['Abidjan', 'Yamoussoukro', 'Bouaké']
            };
            $('#ville').empty();
            if (villes[pays]) {
                $.each(villes[pays], function(index, value) {
                    $('#ville').append('<option value="'+value+'">'+value+'</option>');
                });
            }
        }).trigger('change');

        $('#ville').change(function() {
            var ville = $(this).val();
            var drapeaux = {
                'Casablanca': '🇲🇦',
                'Rabat': '🇲🇦',
                'Marrakech': '🇲🇦',
                'Tunis': '🇹🇳',
                'Sousse': '🇹🇳',
                'Sfax': '🇹🇳',
                'Alger': '🇩🇿',
                'Oran': '🇩🇿',
                'Constantine': '🇩🇿',
                'Dakar': '🇸🇳',
                'Thiès': '🇸🇳',
                'Saint-Louis': '🇸🇳',
                'Abidjan': '🇨🇮',
                'Yamoussoukro': '🇨🇮',
                'Bouaké': '🇨🇮'
            };
            $('#drapeau').text(drapeaux[ville] || '');
        }).trigger('change');
    });



</script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

<script>
    $(document).ready(function() {
        $('form').submit(function(event) {
            let isValid = true;
            if (!isValid) {
                event.preventDefault();
            }
        });

        // Charger les villes en fonction du pays sélectionné
        $('#pays').change(function() {
            var pays = $(this).val();
            var villes = {
                'Maroc': ['Casablanca', 'Rabat', 'Marrakech','Beni Mellal','Azrou','Al Hoceima'],
                'Tunisie': ['Tunis', 'Sousse', 'Sfax'],
                'Algérie': ['Alger', 'Oran', 'Constantine'],
                'Sénégal': ['Dakar', 'Thiès', 'Saint-Louis'],
                'Côte d\'Ivoire': ['Abidjan', 'Yamoussoukro', 'Bouaké']
            };
            $('#ville').empty();
            if (villes[pays]) {
                $.each(villes[pays], function(index, value) {
                    $('#ville').append('<option value="'+value+'">'+value+'</option>');
                });
            }
        }).trigger('change'); // Initialiser le dropdown des villes sur le pays sélectionné par défaut

        // Changer le drapeau à côté du numéro de téléphone en fonction de la ville sélectionnée
        $('#ville').change(function() {
            var ville = $(this).val();
            var drapeaux = {
                'Casablanca': '🇲🇦',
                'Rabat': '🇲🇦',
                'Marrakech': '🇲🇦',
                'Tunis': '🇹🇳',
                'Sousse': '🇹🇳',
                'Sfax': '🇹🇳',
                'Alger': '🇩🇿',
                'Oran': '🇩🇿',
                'Constantine': '🇩🇿',
                'Dakar': '🇸🇳',
                'Thiès': '🇸🇳',
                'Saint-Louis': '🇸🇳',
                'Abidjan': '🇨🇮',
                'Yamoussoukro': '🇨🇮',
                'Bouaké': '🇨🇮'
            };
            $('#drapeau').text(drapeaux[ville] || '');
        }).trigger('change');
    });



</script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>