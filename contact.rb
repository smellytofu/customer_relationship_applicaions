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

	def printAttribute(attribute)
		case attribute
		when 1
			puts "#{@firstName}"
		when 2
			puts "#{@lastName}"
		when 3
			puts "#{@email}"
		when 4
			puts "#{@notes}"
		when 5
			puts "#{@id}"
		end
	end
end