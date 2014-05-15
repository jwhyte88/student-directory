class1 = ["bob", "dave", "nic"]
class2 = ["steve", "mike", "john"]


def print_students_names(x)
	counter = 0

	until counter == x.count do
		puts x[counter]
		counter += 1
	end
end


print_students_names(class1)
print_students_names(class2)



