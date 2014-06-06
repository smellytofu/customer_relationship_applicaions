class Contact
	attr_accessor :id, :firstName, :lastName, :email, :notes

	def initialize(myFirstName, myLastName, myEmail, myNotes)
		@firstName = myFirstName
		@lastName = myLastName
		@email = myEmail
		@notes = myNotes
		@id = 0
	end

	def printMe()
		puts "Name: #{@firstName} #{@lastName}\nEmail: #{@email}\nNotes: #{@notes}\nid: #{@id}"
	end
end