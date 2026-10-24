<?php
$host = 'mysql-2e99f17a-fababeirtammy-e8be.j.aivencloud.com';
$user = 'avnadmin';
$pass = 'AVNS_bjgqHkPktvjubISQjce';
$dbname = 'defaultdb';
$port = 28992;
$ssl_ca = '/etc/secrets/ca.pem';

$conn = mysqli_init();

if ($ssl_ca && file_exists($ssl_ca)) {
    mysqli_ssl_set($conn, NULL, NULL, $ssl_ca, NULL, NULL);
}

if (!mysqli_real_connect($conn, $host, $user, $pass, $dbname, $port, NULL, MYSQLI_CLIENT_SSL)) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
