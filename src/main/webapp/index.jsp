<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="author" content="Elizabeth McCurdy">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Java II Week 4 Servlets and JSP Assessment Index page 1.</title>
</head>
<body><a name="top"></a>
<header>
	<h1 style="background-color: hsl(230, 55%, 25%); color: aliceblue;">Welcome to the Java II Week 4 Servlets and JSP Assessment Index Page!</h1>
</header>
<section>
<h2>Please select which page you would like to be directed to:</h2>
	<nav>
		<a class="active" href="index.jsp">Home - Index Page</a><br>
		<a href="dog_entry.jsp">MockVet Dog Entry Page</a><br>
		<a href="scrambled_word.jsp">Scrambled Word Page</a>
	</nav>

<!-- trying to decide whether to use nav or radio button to select page to go to
	<form>
	<h3>Please select which page you would like to be directed to:</h3>
	<hr>
	<input type="radio" id="dogEntry" name="dogEntryInput" value="Dog Entry Page">
	<label for="dogEntry">MockVet Dog Entry Page</label><br>
	<input type="radio" id="scrambledWord" name="scrambledWordInput" value="Scrambled Word Page">
	<label for="scrambledWord">Scrambled Word Page</label><br><br>
	
	<input type="submit" value="Go to Selected Page"/><br>
	</form>
-->

</section>
<footer class="footer" style="text-align: center;">
        <a href="#top" title="Back to top.">Return to top of the page.</a>
</footer>
</body>
</html>