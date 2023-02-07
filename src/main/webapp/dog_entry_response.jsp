<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="author" content="Elizabeth McCurdy">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Java II Week 4 Servlets and JSP Assessment - DogEntryCreator Results</title>
</head>
<body>
<header>
	<h1 style="background-color: hsl(230, 55%, 25%); color: aliceblue;">MockVet Clinic Pet Database<br>
		Dog Entry Results Page.</h1>
		<!--Commented out the nav bar since put options at bottom of page instead
	<nav>
		<a href="index.jsp">Home - Index Page</a><br>
		<a href="dog_entry.jsp">MockVet Dog Entry Page</a><br>
		<a href="scrambled_word.jsp">Scrambled Word Page</a><br>
		<a class="active" href="dog_entry_response.jsp">MockVet Dog Entry Results Page</a>
	</nav>
	 -->
</header>
<section>
	<h2>Your Dog Entry Results: </h2>
	<p>${userDogInput.getName()} is a ${userDogInput.getGender()} ${userDogInput.getBreed()} owned by:  
	${userDogInput.getOwnerName()} seen primarily by: ${userDogInput.getPrimaryVet()}
	<br>
	<br>
	Dog's Name: ${userDogInput.getName()} <br/>
	Gender: ${userDogInput.getGender()} <br/>
	Breed: ${userDogInput.getBreed()} <br/>
	Owner's Name: ${userDogInput.getOwnerName()} <br/>
	Primary Vetenarian's Name: ${userDogInput.getPrimaryVet()} <br/>
	</p><br>
	
	<a href="index.jsp">Return to home page</a><br>
	<a href="dog_entry.jsp">Enter another dog into database.</a><br>
	<a href="scrambled_word.jsp">Try the Guess the Scrambled Word page.</a>
</section>

</body>
</html>