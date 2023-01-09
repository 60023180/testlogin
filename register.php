<?php 

    session_start();

        require_once "connection.php";

            if (isset($_POST['submit'])) {
                $username = $_POST['username'];
                $password = $_POST['password'];
                $e_prefix = $_POST['e_prefix'];
                $firstname = $_POST['firstname'];
                $lastname = $_POST['lastname'];
                $e_nickname = $_POST['e_nickname'];
                $e_dep = $_POST['e_dep'];
                $e_position = $_POST['e_position'];
                $e_birth = $_POST['e_birth'];
                $e_cid = $_POST['e_cid'];
                $e_license = $_POST['e_license'];
                $e_tel = $_POST['e_tel'];
            

                $user_check = "SELECT * FROM user WHERE username = '$username' LIMIT 1";
                $result = mysqli_query($conn, $user_check);
                $user = mysqli_fetch_assoc($result);

            if ($user['username'] === $username) {
                echo "<script>alert('Username already exists');</script>";
            } else {
                $passwordenc = md5($password);

                $query = "INSERT INTO user (username, password, e_prefix, firstname, lastname, e_nickname, e_dep, e_position, e_birth, e_cid, e_license, e_tel, userlevel)
                            VALUE ('$username', '$passwordenc', '$e_prefix','$firstname', '$lastname', '$e_nickname', '$e_dep', '$e_position', '$e_birth', '$e_cid', '$e_license', '$e_tel', 'm')";
                $result = mysqli_query($conn, $query);

                if ($result) {
                    $_SESSION['success'] = "Insert user successfully";
                    header("Location: index.php");
                } else {
                    $_SESSION['error'] = "Something went wrong";
                    header("Location: index.php");
                }
            }

        }

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register Page</title>

    <link rel="stylesheet" href="style.css">

</head>
<body>

    <div class="header">
        <h2>ลงทะเบียน HOSxP</h2>
    </div>

    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
    


        <div class="input-group">
            <label for="e_prefix">คำนำหน้า</label>
            <input type="text" name="e_prefix" placeholder="ป้อนคำนำหน้าของคุณ" required>
        </div>  

        <div class="input-group">
            <label for="firstname">ชื่อ</label>
            <input type="text" name="firstname" placeholder="ป้อนชื่อของคุณ" required>
        </div> 

        <div class="input-group">
            <label for="lastname">นามสกุล</label>
            <input type="text" name="lastname" placeholder="ป้อนนามสกุลของคุณ" required>
        </div> 

        <div class="input-group">
            <label for="e_nickname">ชื่อเรียก/ชื่อเล่น</label>
            <input type="text" name="e_nickname" placeholder="ป้อนชื่อเรียกของคุณ" required>
        </div>  

        <div class="input-group">
            <label for="e_birth">วัน/เดือน/ปีเกิด</label>
            <input type="text" name="e_birth" placeholder="ป้อนวันเกิดของคุณ" required class="fa fa-calendar">////
        </div> 



        <div class="input-group">
            <label for="department_name">ตำแหน่ง</label>
            <input type="text" name="department_name" placeholder="ป้อนตำแหน่งของคุณ" required>////
        </div>


        <select name="users" onchange="showUser(this.value)">
        <option value="">เลือกตำแหน่ง </option>
        <option value="1">Peter Griffin</option>
        <option value="2">Lois Griffin</option>
        <option value="3">Joseph Swanson</option>
        <option value="4">Glenn Quagmire</option>
        </select>


        <div class="input-group">
            <label for="e_position">สังกัด/หน่วยงาน</label>
            <input type="text" name="e_position" placeholder="ป้อน สังกัด/หน่วยงาน ของคุณ" required>////
        </div> 

        <div class="input-group">
            <label for="e_nickname">เลขบัตรประชาชน</label>
            <input type="text" name="e_nickname" placeholder="ป้อนเลขบัตรประชาชนของคุณ" required>
        </div>  

        <div class="input-group">
            <label for="e_license">เลขใบประกอบวิชาชีพ</label>
            <input type="text" name="e_license" placeholder="ป้อนเลขใบประกอบวิชาชีพของคุณ" required>
        </div> 

        <div class="input-group">
            <label for="e_tel">เบอร์โทรศัพท์</label>
            <input type="text" name="e_tel" placeholder="ป้อนเบอร์โทรศัพท์ของคุณ" required>
        </div> 

        <div class="input-group">
            <label for="username">Username</label>
            <input type="text" name="username" placeholder="Enter your username" required>
        </div>    

        <div class="input-group">
            <label for="password">Password</label>
            <input type="text" name="password" placeholder="Enter your password" required>
        </div>  

        <div class="input-group">
                <button type="submit" name="submit" class="btn">ลงทะเบียน</button>
        </div>
        <p>เป็นสมาชิกอยู่แล้ว? <a href="index.php">เข้าสู่ระบบ</a></p>


    
    </form>

    
</body>
</html>