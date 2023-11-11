<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Strona IO</title>
    <link rel="stylesheet" href="kod_css.css">
</head>
<body>

    Strona z filmami













<?php





//! nie tykaj
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "eparasol";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
    echo "Connected successfully";






// Close connection
mysqli_close($conn);
?>

</body>
</html>

