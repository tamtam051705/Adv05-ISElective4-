<?php
require_once __DIR__ . "/auth.php";
require_once __DIR__ . "/db_connect.php";

$uploadDir = __DIR__ . "/uploads/instructors/";
if (!is_dir($uploadDir)) {
    @mkdir($uploadDir, 0777, true);
}

function saveInstructorPhoto($file,$oldPhoto = '') {
    global $uploadDir;
    if (!isset($file) || $file['error'] === UPLOAD_ERR_NO_FILE) return$oldPhoto;
    if ($file['error'] !== UPLOAD_ERR_OK) return$oldPhoto;

    $allowed = ['jpg','jpeg','png','gif','webp'];
    $ext = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
    if (!in_array($ext, $allowed, true)) return$oldPhoto;
    if ($file['size'] > 5 * 1024 * 1024) return$oldPhoto;

    $filename = uniqid('instructor_', true) . '.' .$ext;
    if (move_uploaded_file($file['tmp_name'], $uploadDir .$filename)) {
        if ($oldPhoto !== '' && is_file($uploadDir . basename($oldPhoto))) {
            @unlink($uploadDir . basename($oldPhoto));
        }
        return $filename;
    }
    return $oldPhoto;
}

if (isset($_GET['delete'])) {
    $id = (int)$_GET['delete'];

    $stmt = mysqli_prepare($conn, "SELECT PHOTO FROM tbl_instructors WHERE ID=?");
    mysqli_stmt_bind_param($stmt, "i", $id);
    mysqli_stmt_execute($stmt);
    $res = mysqli_stmt_get_result($stmt);
    $old = mysqli_fetch_assoc($res);
    mysqli_stmt_close($stmt);

    $stmt = mysqli_prepare($conn, "DELETE FROM tbl_instructors WHERE ID=?");
    mysqli_stmt_bind_param($stmt, "i", $id);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);

    if ($old && !empty($old['PHOTO']) && is_file($uploadDir . basename($old['PHOTO']))) {
        @unlink($uploadDir . basename($old['PHOTO']));
    }

    header("Location: instructor.php");
    exit();
}

if (isset($_POST['add_instructor'])) {
    $salutation = trim($_POST['salutation'] ?? '');
    $firstname = trim($_POST['firstname'] ?? '');
    $middlename = trim($_POST['middlename'] ?? '');
    $lastname = trim($_POST['lastname'] ?? '');
    $photo = saveInstructorPhoto($_FILES['photo'] ?? null);

    $stmt = mysqli_prepare($conn, "INSERT INTO tbl_instructors (SALUTATION, FIRSTNAME, MIDDLENAME, LASTNAME, PHOTO) VALUES (?, ?, ?, ?, ?)");
    mysqli_stmt_bind_param($stmt, "sssss", $salutation, $firstname,$middlename, $lastname,$photo);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);

    header("Location: instructor.php");
    exit();
}

$result = mysqli_query($conn, "SELECT * FROM tbl_instructors ORDER BY ID ASC");
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Instructor | Academic Information System</title>
<link rel="stylesheet" href="app.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<style>
.photo-thumb{width:46px;height:46px;object-fit:cover;border-radius:50%;border:1px solid #ddd}
.no-photo{font-size:12px;color:#888}
</style>
</head>
<body>
<?php include __DIR__ . "/session_banner.php"; ?>
<div class="wrapper">
<aside class="sidebar">
<div class="logo"><h2>MSTIP Academic</h2><p>Enrollment Management System</p></div>
<nav class="menu">
<a href="dashboard.php"><i class="fa-solid fa-chart-column"></i> Dashboard</a>
<a href="course.php"><i class="fa-solid fa-graduation-cap"></i> Courses</a>
<a href="schoolyear.php"><i class="fa-solid fa-calendar"></i> School Year</a>
<a href="section.php"><i class="fa-solid fa-users"></i> Section</a>
<a href="term.php"><i class="fa-solid fa-clock"></i> Term</a>
<a href="yearlevel.php"><i class="fa-solid fa-hourglass-half"></i> Year Level</a>
<a href="subjects.php"><i class="fa-solid fa-book"></i> Subjects</a>
<a href="usertype.php"><i class="fa-solid fa-user-shield"></i> User Type</a>
<a href="users.php"><i class="fa-solid fa-user"></i> Users</a>
<a href="instructor.
