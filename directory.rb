student_count = 11
#Let's put all the students into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
# and then print them
puts "the students of Villians Accademy"
puts "-------------"
students.each do |student|
  puts students
end
# finally we print the total
puts "Overall, we have #{students.count} great students"