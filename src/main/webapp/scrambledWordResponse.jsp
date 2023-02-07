<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang=en>
<head>
<meta charset="ISO-8859-1">
<meta name="author" content="Elizabeth McCurdy">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Java II Week 4 Servlets and JSP Assessment - WordChecker Results</title>
</head>
<body>
<header>
	<h1 style="background-color: hsl(230, 55%, 25%); color: aliceblue;">Guess Scrambled Word-<br>
		Word Checker Results Page.</h1>
</header>
<section>
<h2>Your Scrambled Word Guess Results!: </h2>
<p>
${userGuessOutput.getCheckerOutput()} <br /> 
Your guess: ${userGuessOutput.getUserGuess()} <br /> 
The scrambled word was: ${userGuessOutput.getUnscrambledWord()}<br />
</p>
</section><br>	
	<a href="index.jsp">Return to home page</a><br>
	<a href="dog_entry.jsp">Try MockVet dog input for database entry.</a><br>
	<a href="scrambled_word.jsp">Try the Guess the Scrambled Word again.</a>
</body>
</html>