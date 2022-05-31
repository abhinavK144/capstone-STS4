<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">


<!--=============== BOXICONS ===============-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

<!--=============== SWIPER CSS ===============-->
<link rel="stylesheet" href="assets/css/swiper-bundle.min.css">


<title>admin</title>
<style>

.center {
  padding: 70px 0;
  border: 3px #5bc0de;
  text-align: center;
}

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


/*=============== HEADER SECTION ===============*/
.header {
  width: 100%;
  background-color: var(--body-color);
  position: fixed;
  top: 0;
  left: 0;
  z-index: var(--z-fixed);
}



/*=============== BUTTONS ===============*/
.button {
  display: inline-block;
  background: #5bc0de;
  color: #fff;
  padding: .50rem 1rem;
  border-radius: .25rem;
  font-weight: var(--font-medium);
  transition: .3s;
  justify-items: center;
 
}

.button:hover {
  background: #337ab7;
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

</style>
</head>
<body>

<div class="center">
      <h2 style="font-family:Poppins;" class="bx bxs-shopping-bags nav__logo-icon">Book world</h2> <br></br>
        
  <h2>welcome admin ${user.getEmail_Id()} .</h2>
  <br></br>
  
  <div>	
  <a href="http://localhost:1212/CaseStudyMVC/spring/getAllProduct"  class="button" >Display All</a>
  </div>

</div>

</body>
</html>