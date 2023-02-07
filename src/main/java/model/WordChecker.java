/**
* @author Elizabeth McCurdy - emccurdy
* CIS 175 - Spring 2023
* Feb 7, 2023
*/
package model;


public class WordChecker {
	// private attributes/instance variables -
	private String userGuess;
	final String unscrambledWord = "Frankenstein";
	private String checkerOutput;
	
	//Constructors
	/**
	 * Default - no args constructor 
	 */
	public WordChecker() {
		super();
	}

	/**
	 * Non-default - constructor
	 * @param userGuess
	 */
	public WordChecker(String userGuess) {
		super();
		this.userGuess = userGuess;
		//call to check if user's Guess matches the unscrambled word
		setCheckerOutput(userGuess);
	}

	// Getters/setters methods for instance variables
	/**
	 * @return the userGuess
	 */
	public String getUserGuess() {
		return userGuess;
	}

	/**
	 * @param userGuess the userGuess to set
	 */
	public void setUserGuess(String userGuess) {
		this.userGuess = userGuess;
	}

	/**
	 * @return the checkerOutput
	 */
	public String getCheckerOutput() {
		return checkerOutput;
	}

	/**
	 * @param checkerOutput the checkerOutput to set
	 */
	public void setCheckerOutput(String userGuess) {
		if (userGuess.equalsIgnoreCase(unscrambledWord)) {
			this.checkerOutput = "Correct! You guessed the scrambled word.";
		} else {
			this.checkerOutput = "Incorrect! You did not guess the scrambled word.";
		}
		
	}

	/**
	 * @return the unscrambledWord
	 */
	public String getUnscrambledWord() {
		return unscrambledWord;
	}

	@Override
	public String toString() {
		return "WordChecker [userGuess=" + userGuess + ", unscrambledWord=" + unscrambledWord + ", checkerOutput="
				+ checkerOutput + "]";
	}

	
}
