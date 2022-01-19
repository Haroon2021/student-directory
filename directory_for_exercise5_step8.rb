def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "enter your hobbies"
  hobbies = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november, hobbies: hobbies}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Please enter the names of the students"
    name = gets.chomp
    if name == ""
      break
    end
    puts "enter your hobbies"
    hobbies = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villian Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort), #{student[:hobbies]}"
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