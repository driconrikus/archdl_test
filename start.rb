require "./lib/article"
require 'json'
continue = true
while(continue)
    puts "###Archdaily Test###"
	puts "Select an option:
	  1. Scenario 1
	  2. Scenario 2
	  3. Scenario 3
	  4. Scenario 4
	  5. Unit testing (rspec)
	  6. Exit"

	STDOUT.flush  
	option = gets.chomp 
		case option.to_i
		when 1..4 then
			file = File.read("scenarios/scenario#{option}.json")
			data_hash = JSON.parse(file)
			article = Article.new
			article.recommended(data_hash)
            puts ""
		when 5 then
			system('bundle exec rspec')
        when 6 then
            puts "Bye!"
            continue = false
		else
			puts "Invalid option, please try again!"
            puts ""
		end
end