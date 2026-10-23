<?php
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
