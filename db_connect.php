<?php
$host = getenv('DB_HOST') ?: 'mysql-2e99f17a-fababeirtammy-e8be.j.aivencloud.com
';
$user = getenv('DB_USER') ?: 'avnadmin';
$pass = getenv('DB_PASS') ?: 'AVNS_bjgqHkPktvjubISQjce';
$dbname = getenv('DB_NAME') ?: 'defaultdb';
$port = getenv('DB_PORT') ?: '28992';

$conn = mysqli_connect($host, $user, $pass, $dbname, $port);


if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>

