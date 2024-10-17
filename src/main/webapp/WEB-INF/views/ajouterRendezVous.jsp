<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title >Créer un Nouveau Rendez-vous</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.2.0/css/bootstrap.min.css">
<style>
.card-header{
background-color:#0596de;
}
</style>
</head>
<body>
<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-header ">
            <h4 class="mb-0 text-white text-center">Créer un nouveau rendez-vous</h4>
        </div>
        <div class="card-body">
            <form action="${pageContext.request.contextPath}/saveRendezVous" method="post">
                <input type="hidden" name="medecin.id" value="${medecin.id}" />

                <div class="mb-3">
                    <label for="dateHeure" class="form-label fw-bold"><abbr title="Requis">*</abbr>Date et Heure</label>
                    <input type="datetime-local" class="form-control" id="dateHeure" name="dateHeure" required>
                </div>

                <div class="mb-3">
                    <label for="prenom" class="form-label fw-bold"><abbr title="Requis">*</abbr> Prénom :</label>
                    <input type="text" id="prenom" name="prenom" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="nomdefamille" class="form-label fw-bold"><abbr title="Requis">*</abbr> Nom de Famille :</label>
                    <input type="text" id="nomdefamille" name="nomdefamille" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label fw-bold"><abbr title="Requis">*</abbr> Email :</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="numeroPortable" class="form-label fw-bold"><abbr title="Requis">*</abbr> Numéro Portable :</label>
                    <input type="text" id="numeroPortable" name="numeroPortable" class="form-control" required>
                </div>



                <button type="submit" class="btn btn-warning">Enregistrer</button>
            </form>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/webjars/bootstrap/5.2.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
