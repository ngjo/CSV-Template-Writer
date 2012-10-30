dir = File.dirname(__FILE__)

require "rubygems"
require "awesome_print"
require "#{dir}/contact_information.rb"
require "#{dir}/email_template.rb"

harry = Pseudo.new("harry", "james", "social", "cmn")
salutations = ["Hello", "Hi", "What's Up", "Yo"]

csv_file = "#{dir}/csv_test.csv"
file = File.open(csv_file, "r")
raw_text = file.read
file.close

rows = raw_text.split("\r")
rows_of_columns = rows.map do |row|
	row.split(",")
end

contacts = rows_of_columns.map do |row|
	first_name = row[0]
	last_name = row[1]
	email = row[2]
	website = row[3]
	comment = row[4]
	Contact.new(first_name, last_name, email, website, comment)
end

contacts.delete_at(0)

templates = contacts.map do |contact|
	EmailTemplate.new(contact, harry)
end

templates.each_with_index do |template, index|
	greeting = salutations[index]
	puts template.message(greeting)
end
