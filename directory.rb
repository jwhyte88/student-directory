def input_students
	puts "Please enter the names of students"
	puts "To finish, just hit return twice"

	students = []
	name = gets.chomp

	while !name.empty? do
		students << {:name => name, :cohort => :may}
		puts "Now we have #{students.length} students"
		name = gets.chomp
	end
	students
end

students = input_students
print_header
print(students)
print_footer(student)