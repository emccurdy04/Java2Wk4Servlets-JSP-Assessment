<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="author" content="Elizabeth McCurdy">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Java II Week 4 Servlets and JSP Assessment MockVet Clinic Dog Entry Page</title>
<style>
body {background-color: cream;}
</style>
</head>
<body><a name="top"></a>
<header>
	<h1 style="background-color: hsl(230, 55%, 25%); color: aliceblue;">Welcome to MockVet Clinic Pet Database Dog Entry Page!</h1>
	<nav>
		<a href="index.jsp">Home - Index Page</a><br>
		<a class="active" href="dog_entry.jsp">MockVet Dog Entry Page</a><br>
		<a href="scrambled_word.jsp">Scrambled Word Page</a>
	</nav>
</header>
<section>
	<h2>Enter name of dog, gender, breed, owner's name, and primary vetenerian's name:</h2>
	<hr>
	<form action="getDogEntryServlet" method="post">
	 
	<label for="dogName">Enter dog's name:</label> 
	<input type="text" id="dogName" name="dogNameInput" size="25" required="required"><br>
	<br>
	<!-- trying to decide if should use radio button or drop down list select for 
	dog gender entry -->
	<!-- currently using the drop down list version
	<label>Enter dog's gender:</label><br>
	<input type="radio" id="male" name="genderInput" value="male">
	<label for="male">male</label><br>
	<input type="radio" id="female" name="genderInput" value="female">
	<label for="female">female</label><br>
	 -->
	<br>
	<label for="gender">Enter dog's gender:</label>
	<select id="gender" name="genderInput">
		<option value="male">male</option>
		<option value="female">female</option>
	</select><br>
	<br>
	<label for="breed">Enter dog's breed:</label> 
	<input type="text" id="breed" name="breedInput" size="25" required="required"><br>
	<br>
	<label for="ownerName">Enter dog owner's name:</label>
	<input type="text" id="ownerName" name="ownerNameInput" size="25" required="required"><br>
	<br>
	<label>Enter primary vetenerian's name:</label><br> 
	<input type="radio" id="doghouser" name="vetNameInput" value="Dr. Doghouser">
	<label for="doghouser">Dr. Doghouser</label><br>
	<input type="radio" id="caterson" name="vetNameInput" value="Dr. Caterson">
	<label for="caterson">Dr. Caterson</label><br>
	<input type="radio" id="hamsterville" name="vetNameInput" value="Dr. Hamsterville">
	<label for="hamsterville">Dr. Hamsterville</label><br><br>
	
	<input type="submit" value="Add Dog to Database"/>
	<input type="reset">
	</form>
</section>
<footer class="footer" style="text-align: center;">
        <a href="#top" title="Back to top.">Return to top of the page.</a>
</footer>
</body>
</html>