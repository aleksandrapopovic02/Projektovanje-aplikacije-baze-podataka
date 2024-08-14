<?php

include ("php/baza.php")
    ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" href="./css/style.css">

    <title>Nova ekskurzija</title>
</head>

<body>

    <div class="container" style="margin-top: 50px">
        <div class="row">
            <div class="col-2">

            </div>
            <div class="col-8">
                <div class="card text-black bg-white">
                    <h3 class="card-header">Nova ekskurzija</h3>
                    <div class="card-body">
                        <form action="php/novaEkskurzija.php" method="post">
                            <div class="form-group">
                                <label for="destinacija">Destinacija</label>
                                <input type="text" name="destinacija" class="form-control"
                                    placeholder="Unesi destinaciju" required>
                            </div>

                            <div class="form-group">
                                <label for="datum">Datum</label>
                                <input type="date" name="datum" class="form-control" required>
                            </div>


                            <div class="form-group">
                                <label for="trajanje">Trajanje</label>
                                <select name="trajanje" class="form-control" required>
                                    <option value="">Izaberi trajanje</option>
                                    <option value="1">1 dan</option>
                                    <option value="2">2 dana</option>
                                    <option value="3">3 dana</option>
                                    <option value="4">4 dana</option>
                                    <option value="5">5 dana</option>
                                    <option value="6">6 dana</option>
                                    <option value="7">7 dana</option>

                                </select>
                            </div>

                            <div class="form-group">
                                <label for="prevoz">Prevoz</label>
                                <select name="prevoz" class="form-control" required>
                                    <option value="">Izaberi prevoz</option>
                                    <option value="Avion">Avion</option>
                                    <option value="Autobus">Autobus</option>
                                    <option value="Sopstveni prevoz">Sopstveni prevoz</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="opis">Opis putovanja</label>
                                <textarea class="form-control" name="opis" rows="10"
                                    placeholder="Opis putovanja"></textarea>
                            </div>

                            <div class="form-group">
                                <label for="cena">Cena putovanja:</label>
                                <input type="text" name="cena" class="form-control" placeholder="Unesi cenu" required>
                            </div>

                            <button type="button" class="btn btn-primary"><a href="ekskurzije.php">Nazad na
                                    individualna putovanja</a></button>
                            <button type="submit" class="btn btn-primary" style=" float: right;">Dodaj
                                destinaciju</button>
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
                                echo 'Uspesno uneli destinaciju!';
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


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
        </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous">
        </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
        </script>
</body>

</html>