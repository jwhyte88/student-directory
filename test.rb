# @students = { :name => "Bob", :cohort => :may, :name => "Joe", :cohort => :may, :name => "Mike", :cohort => :may, }

def save_students
  file = File.open("students.csv", "w")
  
    file.puts "Hello"
  
  file.close
end

save_students

# class1 = ["bob", "dave", "nic"]
# class2 = ["steve", "mike", "john"]


# def print_students_names(x)
# 	counter = 0

# 	until counter == x.count do
# 		puts x[counter]
# 		counter += 1
# 	end
# end


# print_students_names(class1)
# print_students_names(class2)
