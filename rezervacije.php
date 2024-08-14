<?php

include("php/baza.php")

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="./css/style.css">

    <title>Rezervacije</title>
</head>

<body>
    <div class="container" style="margin-top: 50px">
        <div class="row">
            <div class="col-2">

            </div>
            <div class="col-8">

                <div class="card text-black bg-white">
                    <h2 class="card-header">Spisak rezervacija
                        <button type="button" class="btn btn-primary" style=" float: right; margin: 0px 10px;">
                            <a href="novaRezervacija.php">Dodajte novu rezervaciju</a></button>
                    </h2>

                    <?php

                    $query = $mysqli->query("SELECT * FROM rezervacija");

                    while ($data = $query->fetch_object()) {
                        echo '<div class="card text-black bg-white">';
                        echo '<div class="card-body">';
                        echo '<h3 class="card-title">' . $data->ime . ' ' . $data->prezime . '</h3>';
                        echo '<ul class="list-group">';
                        echo '<li class="list-group-item">Broj telefona: ' . $data->br_telefona . '</li>';
                        echo '<li class="list-group-item">Email adresa: ' . $data->email . '</li>';
                        echo '<li class="list-group-item">Rezervacija za: ' . $data->destinacija . '</li>';
                        echo '</ul>';
                        echo '<form action="php/delete.php" method="POST">';
                        echo '<input type="hidden" name="id" value="' . $data->id . '">';
                        echo '<button type="submit" name="delete" class="btn btn-danger">Izbriši</button>';
                        echo '</form>';
                        echo '</div>';
                        echo '</div>';
                    }
                    
                    ?>

                    <h5><a href="panel.php">→Nazad na panel </a>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
    </script>

</body>

</html>