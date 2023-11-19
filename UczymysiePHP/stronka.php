<!DOCTYPE html>
<html lang="pl">
<head>
<link rel="stylesheet" href="css/main.css">
</head>
<body>


<?php

$mysqli = new mysqli('localhost','root','','eparasol') or die($mysqli->connect_error);

$zapytanie = 'SELECT serialeifilmy.tytul, COALESCE(ROUND(sifoceny.srednia_ocena, 1), 0) AS średnia_ocen, COALESCE(sifoceny.ilosc_ocen, 0) AS ilość_ocen, serialeifilmy.rok_produkcji, serialeifilmy.obrazki, sif.nazwa, GROUP_CONCAT(DISTINCT gatunki.nazwa SEPARATOR ", " ) AS lista_gatunków FROM serialeifilmy LEFT JOIN sifgatunki ON serialeifilmy.id = sifgatunki.film_id LEFT JOIN gatunki ON gatunki.id = sifgatunki.gatunek_id LEFT JOIN sif ON sif.id = serialeifilmy.serial_albo_film LEFT JOIN ( SELECT film_id, ROUND(avg(ocena), 1) AS srednia_ocena, count(*) AS ilosc_ocen FROM sifoceny GROUP BY film_id ) AS sifoceny ON sifoceny.film_id = serialeifilmy.id GROUP BY serialeifilmy.tytul, serialeifilmy.id ORDER BY średnia_ocen DESC;';

$result = $mysqli->query("$zapytanie")
 or die($mysqli->connect_error);

$ranking = 1;
while ($data = $result->fetch_assoc()) {    

    
    echo "<div class='inner-container'>";
    echo  "<div class='niebieski-div'>";
    echo "<div class='numerekdlarankingu'>$ranking</div>";
    echo "<div class='obrazekdlarankingu'> <img src='{$data['obrazki']}' height='100%' ></div>";
    echo "<div class='tytuldlarankingu'> <h2> {$data['tytul']} </h2></div>";
    echo "<div class='ocenadlarankingu'> <div class='obrazek'> <img src='gwiazdka.png' height='75%' ></div>  <div class='ocena'>  {$data['średnia_ocen']} </div> <h4> {$data['ilość_ocen']} Ocen  </h4>   </div>";
    echo " <div class='rokdlarankingu'> <h2>{$data['rok_produkcji']} </h2></div>";
    echo "<div class='filmalboserialdlarankingu'><h2> {$data['nazwa']} </h2> </div>";
    echo "<div class='gatunkidlarankingu'><h2>Gatunki: {$data['lista_gatunków']}</h2></div>";
    echo "</div> </div>";
    $ranking++;
}

?>

   
</body>
</html>

 