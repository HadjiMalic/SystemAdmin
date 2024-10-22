<?php
// Database configuration
$servername = "localhost";
$username = "connected";
$password = "Connected_1";
$dbname = "devapp";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Process login form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Check if the user is an admin first
    $stmt = $conn->prepare("SELECT * FROM admin_users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $admin_result = $stmt->get_result();

    if ($admin_result->num_rows == 1) {
        // Fetch admin user data
        $admin_user = $admin_result->fetch_assoc();

        // Compare passwords
        if ($password == $admin_user['password']) {
            // Admin password is correct
            session_start();
            $_SESSION['admin_username'] = $admin_user['username']; // Store admin username in session
            header("Location: admin_dashboard.php?section=dashboard"); // Redirect to admin dashboard
            exit();
        } else {
            // Admin password is incorrect
            $error = "Invalid admin password.";
        }
    } else {
        // If not admin, check regular users table
        $stmt = $conn->prepare("SELECT * FROM users WHERE student_id = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows == 1) {
            // Fetch user data
            $user = $result->fetch_assoc();

            // Compare passwords
            if ($password == $user['password']) {
                // User password is correct
                session_start();
                $_SESSION['username'] = $user['student_id']; // Store student ID in session
                header("Location: dashboard.php"); // Redirect to user dashboard
                exit();
            } else {
                // User password is incorrect
                $error = "Invalid password.";
            }
        } else {
            // User not found
            $error = "User not found.";
        }
    }

    // Redirect back to login page with error message
    header("Location: login.php?error=" . urlencode($error));
    exit();
}

// Close connection
$conn->close();
?>
