require_relative "contact"
require_relative "rolodex"

class CRM
	attr_accessor :name, :dex

	def initialize(myName)
		@name = myName
		@dex = Rolodex.new
	end


	def mainMenu()
		puts "[1] Add a new contact"
	  	puts "[2] Modify an existing contact"
	  	puts "[3] Delete a contact"
	  	puts "[4] Display all the contacts"
		puts "[5] Display an attribute"
	  	puts "[6] Exit"
	  	puts "Enter a number: "
	  	menuSelection = gets.chomp.to_i
	  	optionCall(menuSelection)
	end

	def optionCall(option)
		case option
		when 1
			addNewContact(@dex)
		when 2
			changeContact(@dex)
		when 3
			deleteContact(@dex)
		when 4
			displayAllContacts(@dex)
		when 5
			displayAnAttribute(@dex)
		when 6
			return
		else
			puts "That is not a valid option"
			mainMenu
		end
	end

	def addNewContact(myDex)
		print "Enter First Name: "
  		firstName = gets.chomp
  		print "Enter Last Name: "
  		lastName = gets.chomp
  		print "Enter Email Address: "
  		email = gets.chomp
  		print "Enter a Note: "
  		note = gets.chomp
  		contact = Contact.new(firstName, lastName, email, note)
  		myDex.addContact(contact)
  	end

	def changeContact(myDex)
		print "Enter id of the contact to be modified: "
		modId = get.chomp.to_i
		tempContact = dex.retrieveContact(modId)
		puts "What do you wish to change?\n
			  [1] First Name\n
			  [2] Last Name\n
			  [3] Email\n
			  [4] Note\n
			  [5] Id
			  [6] Exit"
		option = gets.chomp.to_i
		case option
		when 1
			print "What would you like to change it to?: "
			tempContact.firstName = gets.chomp
		when 2
			print "What would you like to change it to?: "
			tempContact.lastName = gets.chomp
		when 3
			print "What would you like to change it to?: "
			tempContact.email = gets.chomp
		when 4
			print "What would you like to change it to?: "
			tempContact.note = gets.chomp
		when 5
			print "What would you like to change it to?: "
			tempContact.id = gets.chomp.to_i
		when 6
			return
		else
			puts "That is not an option."
	end

	def deleteContact(myDex)
		print "Please enter the id of the contact you wish to delete: "
		deleteId = gets.chomp.to_i
		myDex.deleeContact(deleteId)
	end

	def displayAllContacts(myDex)

	end

	def displayAnAttribute(myDex)
		
	end

	def self.run(name)
		crm = CRM.new(name)
		crm.mainMenu
	end
end