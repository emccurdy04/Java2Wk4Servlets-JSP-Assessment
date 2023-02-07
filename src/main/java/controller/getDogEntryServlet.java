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

import model.DogEntryCreator;

/**
 * Servlet implementation class getDogEntryServlet
 */
@WebServlet("/getDogEntryServlet")
public class getDogEntryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getDogEntryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * The doPost() method contains the block of code that tells the program
	 * how to process HTTP POST requests sent to this servlet
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 * @param HttpServletRequest - the request string to convert/cast to object - 
	 * @param HttpServletResponse - the response string to convert/cast to object
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Use request.getParameter("formFieldName") method - to retrieve values from
		// the form's entry fields/buttons
		String dogName = request.getParameter("dogNameInput");
		String gender = request.getParameter("genderInput");
		String breed = request.getParameter("breedInput");
		String ownerName = request.getParameter("ownerNameInput");
		String vetName = request.getParameter("vetNameInput");
		
		DogEntryCreator dog = new DogEntryCreator(dogName, gender, breed, ownerName, vetName);
		//set an attribute w/ the object & redirect/map it to correct .jsp page
		//with the parameters needed
		request.setAttribute("userDogInput", dog);
		//then redirect/map above attribute/object to correct result.jsp page
		getServletContext().getRequestDispatcher("/dog_entry_response.jsp").forward(request, response);
		
		// used below PrintWriter statement to verify user inputs were passed in
		//PrintWriter writer = response.getWriter();
		//writer.println("dog name input: " + dogName.toString() + "\ngender input: " + gender.toString() + "\nbreed input: " + breed.toString() + "\nowner name input: " + ownerName.toString() + "\nvet name input: " + vetName.toString());
		//writer.println(dog.toString());
		//writer.close();
		
	}

}
