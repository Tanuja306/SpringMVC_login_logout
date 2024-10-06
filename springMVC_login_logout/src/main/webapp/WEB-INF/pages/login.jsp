<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Background Login Form</title>
    <link rel="stylesheet" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <img src="https://i.postimg.cc/MTRK7Thf/bg-form.jpg" alt="">
    <div class="container">
        <form action="checkdata" method="post">
            <h1>Login</h1>
            <div class="input-box">
                <input type="email" name="semail" placeholder="Email">
                <i class='bx bx-envelope'></i>
            </div>

            <div class="input-box">
                <input type="text" name="spass" placeholder="Password">
                <i class='bx bx-lock-alt' ></i>
            </div>
            <div class="remember">
                <label for="#">
                    <input type="checkbox"> Remember me
                </label>
                <a href="forgot.jsp">Forgot password?</a>
            </div>
            <button class="btn" type="submit">Login</button>
            <div class="register">
                <p>Don't have an account? <br> <a href="#">Register</a></p>
            </div>
        </form>
    </div>
</body>
</html>
</head>
<body>

</body>
</html>

<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
    text-decoration: none;
}

body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

img{
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    object-fit: cover;
    z-index: -1;
}

.container{
    width: 400px;
    color: #fff;
    padding: 30px 40px;
    border-radius: 15px;
    background: rgba(5, 5, 5, .7);
}

.input-box{
    position: relative;
    width: 100%;
    height: 100%;
    margin: 30px 0;
}

.input-box input{
    width: 100%;
    height: 100%;
    background: transparent;
    border: none;
    outline: none;
    border-radius: 5px;
    color: #fff;
    border: 2px solid #fff;
    font-size: 16px;
    padding: 10px;
}

.input-box i{
    position: absolute;
    right: 20px;
    top: 50%;
    transform: translateY(-50%);
    font-size: 20px;
}

.remember{
    display: flex;
    justify-content: space-between;
    font-size: 15px;
    margin: -10px 0 15px;
}

.remember a{
    border-bottom: 2px solid transparent;
    color: #fff;
}

.remember a:hover{
    /* border-bottom: 2px solid #fff; */
    color: #000dff;
}

.btn{
    width: 100%;
    height: 40px;
    background: #04fff0;
    color: #000;
    border: none;
    outline: none;
    border-radius: 20px;
    box-shadow: 0 0 20px #04fff0;
    font-size: 15px;
    font-weight: 600;
    transition: 1s;
    margin-top: 20px;
}

.btn:hover{
    background: transparent;
    border: 2px solid #04fff0;
    color: #fff;
    transform: scale(1.1);
    box-shadow: 0 0 20px #04fff0;
}

.register{
    font-size: 14px;
    margin-top: 20px;
    text-align: center;
}

.register p a{
    font-weight: 600;
    color: #fff;
    font-size: 18px;
}

.register p a:hover{
    color: #000dff;
}

</style>