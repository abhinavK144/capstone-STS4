<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--=============== BOXICONS ===============-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

    <!--=============== SWIPER CSS ===============-->
    <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">

    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/colors/color-1.css">

    <title>Book World</title>
</head>
<body>
    <!--=============== HEADER ===============-->
    <header class="header" id="header">

    </header>

    <!--=============== CART ===============-->
    <div class="cart" id="cart">

    </div>

    <!--=============== login ===============-->
    <div class="login" id="login">

    </div>

    <!--=============== MAIN ===============-->
    <main class="main">
        <!--=============== REGISTRATION ===============-->
        <section class="registration section container">
          <div class="registration" id="registration">

              <a href="index.html"><i class="bx bx-x registration__close" id="registration-close"></i></a>


              <h2 class="registration__title-centre">Registration</h2><br>

              <form action="" class="registration__form">
                <div class="registration_row">
                  <div class="registration__content">
                    <label for="" class="registration__label">First Name</label>
                    <input type="text" autofocus class="registration_input">
                  </div>

                  <div class="registration__content">
                    <label for="" class="registration__label">Last Name</label>
                    <input type="text" class="registration_input">
                  </div>
                </div>
                  <div class="registration__content">
                    <label for="" class="registration__label">Email ID</label>
                    <input type="email" class="registration_input">
                  </div>

                  <div class="registration__content">
                    <label for="" class="registration__label">Phone Number</label>
                    <input type="tel" id="phone" class="registration_input" name="phone" pattern="[+]{1}[0-9]{11,14}" required>
                  </div>

                  <div class="registration_row">
                  <div class="registration__content">
                    <label for="" class="registration__label">Password </label>
                    <input type="password" class="registration_input" name="password" id="txtPassword">
                  </div>

                  <div class="registration__content">
                    <label for="" class="registration__label">Confirm Password </label>
                    <input type="password" class="registration_input" name="confirmPassword" id="txtConfirmPassword">

                  </div>
                  </div>

                  <div class="registration__content" >
                    <label for="" class="registration__label">Address</label>
                    <textarea class="textarea" name="message" cols="58" rows="5" required></textarea>
                  </div>

                  <div>
                    <a href="#" class="button" onclick="return Validate()">sign up</a>
                  </div>
                  <br>






              </form>
          </div>

        </section>
    </main>

    <!--=============== FOOTER ===============-->
    <footer class="footer section">

    </footer>

    <!--=============== SWIPER JS ===============-->
    <script src="assets/js/swiper-bundle.min.js"></script>

    <!--=============== JS ===============-->
    <script src="assets/js/main.js"></script>
</body>
</html>
