/**
* @author Elizabeth McCurdy - emccurdy
* CIS 175 - Spring 2023
* Feb 7, 2023
*/
package model;


public class DogEntryCreator {
	// private attributes/instance variables -
	private String name;
	private String gender;
	private String breed;
	private String ownerName;
	private String primaryVet;
	
	
	//Constructors - 
	/**
	 * Default - no args constructor
	 */
	public DogEntryCreator() {
		super();
	}

	/**
	 * Non-default - constructor -takes all arguments from
	 * getDogEntry form user inputs.  
	 * @param name
	 * @param gender
	 * @param breed
	 * @param ownerName
	 * @param primaryVet
	 */
	public DogEntryCreator(String name, String gender, String breed, String ownerName, String primaryVet) {
		super();
		//this.name = name;
		//this.gender = gender;
		//this.breed = breed;
		//this.ownerName = ownerName;
		//this.primaryVet = primaryVet;
		setName(name);
		setGender(gender);
		setBreed(breed);
		setOwnerName(ownerName);
		setPrimaryVet(primaryVet);
	}
	
	
	// Getters/setters methods for instance variables
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		if (name != null) {
			this.name = name.toLowerCase();
		}
		//this.name = name;
	}

	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}

	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		if (gender != null) {
			this.gender = gender.toLowerCase();
		}
	}

	/**
	 * @return the breed
	 */
	public String getBreed() {
		return breed;
	}

	/**
	 * @param breed the breed to set
	 */
	public void setBreed(String breed) {
		if (breed != null) {
			this.breed = breed.toLowerCase();
		}
	}

	/**
	 * @return the ownerName
	 */
	public String getOwnerName() {
		return ownerName;
	}

	/**
	 * @param ownerName the ownerName to set
	 */
	public void setOwnerName(String ownerName) {
		if (ownerName != null) {
			this.ownerName = ownerName.toLowerCase();
		}
	}

	/**
	 * @return the primaryVet
	 */
	public String getPrimaryVet() {
		return primaryVet;
	}

	/**
	 * @param primaryVet the primaryVet to set
	 */
	public void setPrimaryVet(String primaryVet) {
		if (primaryVet != null) {
			this.primaryVet = primaryVet.toLowerCase();
		}
	}

	//Helper methods - 
	// did assigning of all input to lower case w/in the set methods instead 
//	public void setEntryToLowerCase(String entry) {
//		
//	}
	
	public String returnDogEntryDetails() {
		return this.name + " is a " + this.gender + " " + this.breed + " owned by: " + this.ownerName + " seen primarily by: " + this.primaryVet;
	}

	@Override
	public String toString() {
		return "DogEntryCreator [name=" + name + ", gender=" + gender + ", breed=" + breed + ", ownerName=" + ownerName
				+ ", primaryVet=" + primaryVet + "]";
	}

}
