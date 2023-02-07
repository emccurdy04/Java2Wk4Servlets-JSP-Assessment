<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="author" content="Elizabeth McCurdy">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Java II Week 4 Servlets and JSP Assessment Scrambled Word Page</title>
	
</head>
<body>
<header>
	<h1 style="background-color: hsl(230, 55%, 25%); color: aliceblue;">Welcome to the Guess the Scrambled Word Page!</h1>
	<nav>
		<a href="index.jsp">Home - Index Page</a><br>
		<a href="dog_entry.jsp">MockVet Dog Entry Page</a><br>
		<a class="active" href="scrambled_word.jsp">Scrambled Word Page</a>
	</nav>
</header>
<section>
	<h2>Today's Scrambled word: aknensitrfne</h2>
	<hr>
	<form action="getScrambledWordServlet" method="post">
	
	<label for="scrambledWordGuess">Guess the Scrambled Word:</label><br> 
	<input type="text" id="scrambledWordGuess" name="userInput" size="12" required="required"><br><br>
	
	<input type="submit" value="Submit"/>
	<input type="reset">
	</form>
</section>	
</body>
</html>