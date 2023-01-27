<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>Registration Success</title>
</head>
<body>
<h2>Registration Succeeded!</h2>
<div class="container">
    <div class="row">
        <div class="col">
            Nama
        </div>
        <div class="col">
            ${identity.name}
        </div>
    </div>
    <div class="row">
        <div class="col">
            Alamat
        </div>
        <div class="col">
            ${identity.address}
        </div>
    </div>
    <div class="row">
        <div class="col">
            Kota
        </div>
        <div class="col">
            ${identity.city}
        </div>
    </div>
    <div class="row">
        <div class="col">
            Provinsi
        </div>
        <div class="col">
            ${identity.province}
        </div>
    </div>
    <div class="row">
        <div class="col">
            Tanggal Registrasi
        </div>
        <div class="col">
            ${identity.registerDate}
        </div>
    </div>
    <div class="row">
        <div class="col">
            Status
        </div>
        <div class="col">
            ${identity.status}
        </div>
    </div>
</div>
</body>
</html>