def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------"
end

def print_student_names(students)
  students.each_with_index do |student, i|
  	puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)" 
  end
end

# def print_student_names(students)
# 	counter = 0

# 	until counter == students.count do
# 		person = students[counter]
# 		puts "Their name is #{person[:name]} and they're in the #{person[:cohort]} cohort"
# 		counter += 1
# 	end
# end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def input_students
	print "Please enter the names of students\nTo finish, just hit return twice\n"
	students = []	
	name = gets.chomp
	while !name.empty? do
		students << { :name => name, :cohort => :may }
		puts "Now we have #{students.length} students"
		name = gets.chomp
	end
	students
end

# def students_starting_with(students, letter)
# 	students.select {|student| student[:name].start_with?(letter) }
# end

# def students_with_names_shorter_than(students, length)
# 	students.select {|student| student[:name].length < length }
# end

def interactive_menu
	students = []
	loop do
		# 1. print the menu and ask the user what to do
		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit"
		# 2. read the input and save it into a variable
		selection = gets.chomp
		# 3. do what the user has asked
		case selection 
		when "1"
			students = input_students
		when "2"
			print_header
			print_student_names(students)
			print_footer(students)
		when "9"
			exit # this will cause the program to terminate
		else
			puts "I don't know what you meant, try again"
		end
	end
end

# students = input_students
# students_starting_with_a = students_starting_with(students, 'A')
# students_with_short_names = students_with_names_shorter_than(students_starting_with_a, 12)

# print_header
# print_student_names(students_with_short_names)
# print_footer(students)

interactive_menu