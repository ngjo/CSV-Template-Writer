class Contact
	attr_accessor :first, :last, :website, :comment
	def initialize(first, last, email, website, comment)
		@first = first.capitalize!
		@last = last.capitalize!
		@email = email
		@website = website 
		@comment = comment.downcase!
	end
end

class Pseudo
	attr_accessor :pseudo_first, :pseudo_position, :pseudo_company
	def initialize(first, last, position, company)
		@pseudo_first = first.capitalize!
		@pseudo_last = last.capitalize!
		@pseudo_position = position
		@pseudo_company = company
	end
end


