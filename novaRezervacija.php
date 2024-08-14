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

    <title>Nova rezervacija</title>
</head>

<body>

    <div class="container" style="margin-top: 50px">
        <div class="row">
            <div class="col-2">

            </div>
            <div class="col-8">
                <div class="card text-black bg-white">
                    <h3 class="card-header">Nova rezervacija</h3>
                    <div class="card-body">
                        <form action="php/novaRezervacija.php" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="ime">Ime:</label>
                                <input type="text" name="ime" class="form-control" placeholder="Unesite ime" required>
                            </div>
                            <div class="form-group">
                                <label for="prezime">Prezime:</label>
                                <input type="text" name="prezime" class="form-control" placeholder="Unesite prezime" required>
                            </div>

                            <div>
                                <label for="br_telefona">Broj telefona:</label><br>
                                <input type="tel" id="br_telefona" name="br_telefona" 
                                pattern="[+]?\d{1,3}[-.\s]?\d{1,3}[-.\s]?\d{1,4}[-.\s]?\d{1,9}" placeholder="+3816xxxxxxxx"required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" name="email" class="form-control" placeholder="Unesite email" required>
                            </div>
                            <div class="form-group">
                                <label for="destinacija">Destinacija:</label>
                                <input type="text" name="destinacija" class="form-control" placeholder="Unesite destinaciju" required>
                            </div>
                            <button type="button" class="btn btn-primary"><a href="rezervacije.php">Nazad na spisak rezervacija</a></button>
                            <button type="submit" class="btn btn-primary" style=" float: right;">Dodaj rezervaciju</button>
                        </form>


                    </div>
                    <div class="card-footer">
                        <?php
                        if (isset($_GET["poruka"])) {
                            echo '<div class="alert alert-success" role="alert">';
                            echo $_GET["poruka"];
                            echo '</div>';
                        }



                        if (isset($_REQUEST["success"])) {
                            if ($_REQUEST["success"] == 1) {
                                echo '<div class = "alert alert-success" role = "success">';
                                echo 'Uspesno uneli rezervaciju!';
                                echo '</div>';
                            }
                        }

                        ?>

                    </div>
                </div>
            </div>
        </div>

        <div class="col-2">

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