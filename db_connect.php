<?php
<<<<<<< HEAD

$servername = "localhost";
$username = "root";
$password = "";
$database = "4afababeir";
$port = "3307";

$conn = mysqli_connect(
    $servername,
    $username,
    $password,
    $database,
    $port,
);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

=======
$host = getenv('DB_HOST') ?: 'mysql-2e99f17a-fababeirtammy-e8be.j.aivencloud.com';
$user = getenv('DB_USER') ?: 'avnadmin';
$pass = getenv('DB_PASS') ?: 'AVNS_bjgqHkPktvjubISQjce';
$dbname = getenv('DB_NAME') ?: 'defaultdb';
$port = (int)(getenv('DB_PORT') ?: 28992);

// Initialize MySQL and enforce SSL for Aiven
$conn = mysqli_init();
mysqli_ssl_set($conn, NULL, NULL, NULL, NULL, NULL);

if (!mysqli_real_connect($conn, $host, $user, $pass, $dbname, $port, NULL, MYSQLI_CLIENT_SSL)) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
>>>>>>> 8d08809d39aea5accd85cd5c496d243ca4fd1eb5
