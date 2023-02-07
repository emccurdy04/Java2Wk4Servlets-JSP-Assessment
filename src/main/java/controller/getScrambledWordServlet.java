/**
* @author Elizabeth McCurdy - emccurdy
* CIS 175 - Spring 2023
* Feb 6, 2023
*/

package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.WordChecker;

/**
 * Servlet implementation class getScrambledWordServlet
 */
@WebServlet("/getScrambledWordServlet")
public class getScrambledWordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getScrambledWordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userInput = request.getParameter("userInput");
		
		WordChecker userGuess = new WordChecker(userInput);
		
		//set an attribute w/ the object & redirect/map it to correct .jsp page
		//with the parameters needed
		request.setAttribute("userGuessOutput", userGuess);
		//then redirect/map above attribute/object to correct result.jsp page
		getServletContext().getRequestDispatcher("/scrambledWordResponse.jsp").forward(request, response);
	
		// used below PrintWriter statement to verify user input was passed in
		//PrintWriter writer = response.getWriter();
		//writer.println("user input: " + userInput.toString());
		//writer.println(userGuess.toString());
		//writer.close();
	}

}
