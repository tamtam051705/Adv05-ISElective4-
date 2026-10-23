<?php
$host = getenv('DB_HOST') ?: '127.0.0.1';
$user = getenv('DB_USER') ?: 'root';
$pass = getenv('DB_PASS') ?: '';
$dbname = getenv('DB_NAME') ?: '4afababeir';
$port = getenv('DB_PORT') ?: '306';

$conn = mysqli_connect($host, $user, $pass, $dbname, $port);


if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>

