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

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------"
end

def print_student_names(students)
  	students.each_with_index { |student, i| puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort) }" }
 
end

# def print_student_names(students)
# 	counter = 0

# 	until counter == students.count do
# 		puts "aksgnasng"
# 	end
# end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def students_starting_with(students, letter)
	students.select {|student| student[:name].start_with?(letter) }
end

def students_with_names_shorter_than(students, length)
	students.select {|student| student[:name].length < length }
end

students = input_students
students_starting_with_a = students_starting_with(students, 'A')
students_with_short_names = students_with_names_shorter_than(students_starting_with_a, 12)
print_header
print_student_names(students_with_short_names)
print_footer(students)











# students = [
# 	{:name => "Roi Driscoll", :cohort => :may},
# 	{:name => "James Whyte", :cohort => :may},
# 	{:name => "Margherita Serino", :cohort => :may},
# 	{:name => "Vaidas Mykolaitis", :cohort => :may},
# 	{:name => "Johann Bornman", :cohort => :may},
# 	{:name => "Kate Hamilton", :cohort => :may},
# 	{:name => "James Kemp", :cohort => :may},
# 	{:name => "Nic Yeeles", :cohort => :may},
# 	{:name => "Julie Walker", :cohort => :may},
# 	{:name => "Will Allen", :cohort => :may},
# 	{:name => "Julia Tan", :cohort => :may},
# 	{:name => "Federico Maffei", :cohort => :may},
# 	{:name => "Jamie Patel", :cohort => :may},
# 	{:name => "Faezrah Rizalman", :cohort => :may},
# 	{:name => "Josh Fail-Broon", :cohort => :may},
# 	{:name => "Sasha Cooper", :cohort => :may},
# 	{:name => "Nicolai DTH", :cohort => :may},
# 	{:name => "Nadav Matalon", :cohort => :may},
# 	{:name => "Fitsum Teklehaimanot", :cohort => :may}
# ]