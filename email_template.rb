class EmailTemplate
	attr_accessor :person, :pseudo
	def initialize (person, pseudo)
		@person = person
		@pseudo = pseudo
	end

	def greeting(salutation)
		"#{salutation} #{@person.first},"
	end

	def paragraph()
		"I want to put links on #{@person.website} because it's so #{person.comment}."
	end

	def sign_off()
		first_line = "Thanks, \n#{pseudo.pseudo_first}"
		"#{first_line} \n#{pseudo.pseudo_position} #{pseudo.pseudo_company}"
	end

	def message(salutation)
		return "#{greeting(salutation)} \n#{paragraph} \n#{sign_off}"
	end
end