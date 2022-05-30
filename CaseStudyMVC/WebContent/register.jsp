<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">


<!--=============== BOXICONS ===============-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

<!--=============== SWIPER CSS ===============-->
<link rel="stylesheet" href="assets/css/swiper-bundle.min.css">



<title>Book World</title>


<style>
/*=============== GOOGLE FONTS ===============*/
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;900&display=swap');

/*=============== VARIABLES CSS ===============*/
:root {
    --header-height: 3.5rem;

    /*========== Colors ==========*/
    --title-color: hsl(250, 8%, 15%);
    --text-color: hsl(250, 8%, 35%);
    --body-color: hsl(250, 60%, 98%);
    --container-color: #fff;
    --shadow: hsla(0, 0%, 15%, .1);
    --scroll-bar-color: hsl(250, 12%, 90%);
    --scroll-thumb-color: hsl(250, 12%, 80%);

    /*========== Font and typography ==========*/
    --body-font: 'Poppins', sans-serif;
    --biggest-font-size: 4rem;
    --h1-font-size: 2.25rem;
    --h2-font-size: 1.5rem;
    --h3-font-size: 1.25rem;
    --normal-font-size: 1rem;
    --small-font-size: .875rem;
    --smaller-font-size: .813rem;

    /*========== Font weight ==========*/
    --font-medium: 500;
    --font-bold: 600;

    /*========== Margenes Bottom ==========*/
    --mb-0-5: .5rem;
    --mb-0-75: .75rem;
    --mb-1: 1rem;
    --mb-1-5: 1.5rem;
    --mb-2: 2rem;
    --mb-2-5: 2.5rem;
    --mb-3: 3rem;

    /*========== z index ==========*/
    --z-tooltip: 10;
    --z-fixed: 100;
}

/* Responsive typography */
@media screen and (max-width: 992px) {
    :root {
        --biggest-font-size: 2rem;
        --h1-font-size: 1.5rem;
        --h2-font-size: 1.25rem;
        --h3-font-size: 1rem;
        --normal-font-size: .938rem;
        --small-font-size: .813rem;
        --smaller-font-size: .75rem;
    }
}

/*=============== BASE ===============*/
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

html {
    scroll-behavior: smooth;
}

body,
button,
input {
    font-family: var(--body-font);
    font-size: var(--normal-font-size);
}

body {
    background-color: var(--body-color);
    color: var(--text-color);
}

h1, h2, h3, h4 {
    color: var(--title-color);
    font-weight: var(--font-medium);
}

ul {
    list-style: none;
}

a {
    text-decoration: none;
}

img {
    max-width: 100%;
    height: auto;
}

button {
    cursor: pointer;
}

button,
input {
    border: none;
    outline: none;
}

/*=============== REUSABLE CSS CLASSES ===============*/
.section {
    padding: 7rem 0 2rem;
}

.section__title,
.breadcrumb__title {
    font-size: var(--h1-font-size);
}

.section__title,
.breadcrumb__subtitle {
    margin-bottom: var(--mb-3);
}

.section__title,
.breadcrumb__title,
.breadcrumb__subtitle {
    text-align: center;
}

.breadcrumb__subtitle span {
  color: var(--first-color);
}

/*=============== LAYOUT ===============*/
.container {
    max-width: 968px;
    margin-left: auto;
    margin-right: auto;
}

.grid {
    display: grid;
}

/*=============== BUTTONS ===============*/
.button {
  display: inline-block;
  background: #1ab73c;
  color: #fff;
  padding: .50rem 1rem;
  border-radius: .25rem;
  font-weight: var(--font-medium);
  transition: .3s;
}

.button:hover {
  background: #27d510;
}

.button__icon {
  font-size: 1.25rem;
}

.button--link {
  color: var(--title-color);
}

.button--flex {
  display: inline-flex;
  align-items: center;
  column-gap: .5rem;
}

/*=============== REGISTRATION ===============*/

.registration{

  margin-top: 2rem;
  position: relative;
  width: 530px;
  height: 70%;
  z-index: var(--z-fixed);
  top: 0;
  padding-top: 5px;
  transition: .4s;

}


.registration__title-center {
font-size: var(--h2-font-size);
text-align: center;
margin-bottom: var(--mb-3);

}

.registration__close {
font-size: 2rem;
color: var(--title-color);
position: absolute;
top: .3rem;
right: .9rem;
cursor: pointer;
}

.registration__form {
  margin-top: 1.5rem;
  row-gap: 1.5rem;
}

.registration_row{
display: flex;
justify-content: space-between;


}

.registration__content {
background: var(--container-color);
margin-bottom: 15px;
border-radius: .5rem;
padding: 10px;
margin-right: 15px;
}

.registration__content .textarea{
border: transparent;
outline: none;
padding: 1em;
padding-left: 0%;
}

.registration__label {
font-size: var(--small-font-size);
color: var(--title-color);

}

.registration_input {
width: 100%;
background: var(--container-color);
color: var(--text-color);
font-size: var(--normal-font-size);

}

.signup {
  color: var(--title-color);
  font-size: var(--small-font-size);
  font-weight: var(--font-medium);

}

.signup a {
  color: 1ab73c;
}

/* Show login */
.show-login {
right: 0;
}


</style>



<script>
	function validateForm() {
		//collect form data in JavaScript variables
		var pw1 = document.getElementById("pswd1").value;
		var pw2 = document.getElementById("pswd2").value;

		//check empty password field
		if (pw1 == "") {
			document.getElementById("message1").innerHTML = "**Fill the password please!";
			return false;
		}

		//check empty confirm password field
		if (pw2 == "") {
			document.getElementById("message2").innerHTML = "**Enter the password please!";
			return false;
		}

		//minimum password length validation
		if (pw1.length < 8) {
			document.getElementById("message1").innerHTML = "**Password length must be atleast 8 characters";
			return false;
		}

		//maximum length of password validation
		if (pw1.length > 15) {
			document.getElementById("message1").innerHTML = "**Password length must not exceed 15 characters";
			return false;
		}

		if (pw1 != pw2) {
			document.getElementById("message2").innerHTML = "**Passwords are not same";
			return false;
		} else {
			alert("Your password created successfully");
			document.write("JavaScript form has been submitted successfully");
		}
	}
</script>
</head>


<body>
	
	<!--=============== MAIN ===============-->
	<main class="main">
		<!--=============== REGISTRATION ===============-->
		<section class="registration section container">
			<div class="registration" id="registration">

				<a href="http://localhost:1212/CaseStudyMVC/index.jsp"><i class="bx bx-x registration__close"
					id="registration-close"></i></a>


				<h2 class="registration__title-centre">Registration</h2>
				<br>

				<form action="./spring/user" method="post"  class="registration__form">

					<div class="registration_row">
						<div class="registration__content">
							<label for="" class="registration__label">First Name</label>
							<input type="text" class="registration_input"
								id="fName" path="fName" required="" />
						</div>


						<div class="registration__content">
							<label for="" class="registration__label">Last Name</label>
							<input type="text" class="registration_input" id="lName"
								path="lName" required="" />
						</div>

					</div>

					<div class="registration__content">
						<label for="" class="registration__label">Phone Number</label>
						<input type="text" class="registration_input" id="phone_No"
							path="phone_No" required=""  />
					</div>



					<div class="registration__content">
						<label for="" class="registration__label">Email ID</label>
						<input type="email" class="registration_input" id="email_Id"
							path="email_Id" required="" />
					</div>

					<div class="registration__content">
							<label for="" class="registration__label">Password </label>
							<input type="password" class="registration_input"
								id="password" path="password" required="" />

						</div>

		<!--			<div class="registration__content">
						<label for="" class="registration__label">Address</label>
						<input type="text" class="textarea" id="address"
							path="address" required="" /></div> -->
					
				  <div class="registration__content">
                    <label for="" class="registration__label">Address</label>
                    <textarea type="text" class="textarea" name="message" cols="58" rows="5" id="address" path="address" required="" ></textarea>
                  </div>
				
			<!-- <div class="registration__content">	
				<label for="" class="registration__label">role:</label>
 					 <select name="role" id="role">
   					 <option value="admin">admin</option>
   					 <option value="user">user</option>
  					 </select>
			    </div> -->	
			    
					<div>	
						<button class="button" type="submit" value="user">Sign Up</button>
					</div>
					<br>

					</form>
			 <div>
					<p class="signup">Already a member?   <a href="http://localhost:1212/CaseStudyMVC/index.jsp">sign In</a></p>
				</p>
			</div> 	

			</div>

		</section>
	</main>

	<!--=============== FOOTER ===============-->
	<footer class="footer section"> </footer>

	<!-- Script -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.6.0/umd/popper.min.js" integrity="sha512-BmM0/BQlqh02wuK5Gz9yrbe7VyIVwOzD1o40yi1IsTjriX/NGF37NyXHfmFzIlMmoSIBXgqDiG1VNU6kB5dBbA==" crossorigin="anonymous"></script> -->
	<!-- Style Switcher -->
	<!-- <script src="js/switcher.min.js"></script>  -->
	<!-- <script src="js/theme.js"></script> -->

</body>
</html>
