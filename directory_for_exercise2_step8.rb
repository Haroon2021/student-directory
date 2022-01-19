def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villian Academy"
  puts "-------------"
end

# puts "Enter first letter of name"
# initial_character = gets.chomp

def print(students)
  puts "Enter first letter of name"
  initial_character = gets.chomp
  students.each do |student|
    if student[:name][0] == initial_character
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
    # puts "#{student[:name][0]}"
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

#nothing happens till we call the methods

students = input_students    
print_header
print(students)
print_footer(students)
