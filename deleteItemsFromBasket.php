<?php
    session_start();
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "spiritlifter";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    if (isset($_SESSION['email'])) {
        $email = $_SESSION['email'];

        $userQuery = "SELECT id FROM accounts WHERE email='$email'";
        $userResult = $conn->query($userQuery);
        if ($userResult->num_rows > 0) {
            $userRow = $userResult->fetch_assoc();
            $user_id = $userRow['id'];

            $deleteQuery = "DELETE FROM basket WHERE userID='$user_id'";
            if ($conn->query($deleteQuery) === TRUE) {
                echo "Coș golit cu succes.";
            } else {
                echo "Eroare la golirea coșului. " . $conn->error;
            }
        } else {
            echo "User not found.";
        }
    } else {
        echo "You must be logged in to proceed.";
    }

    $conn->close();
?>