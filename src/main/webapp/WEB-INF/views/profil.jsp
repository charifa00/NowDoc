<!DOCTYPE html>
<html lang="fr">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rejoignez vos confrères sur DabaDoc Connect+</title>
    <link rel="icon" href="/image.ico" type="image/x-icon">
    <link rel="stylesheet" href="/webjars/bootstrap/5.2.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header">
                <h3>${medecin.nom} ${medecin.prenom}</h3>
            </div>
            <div class="card-body">
                <p><strong>Email:</strong> ${medecin.email}</p>
                <p><strong>Spécialité:</strong> ${medecin.specialites}</p>
                <p><strong>Téléphone:</strong> ${medecin.numeroPortable}</p>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
