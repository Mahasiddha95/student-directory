#first we print the list of students
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
# And we print them
puts "The students of Villains Academy"
puts "-------------"

# Let's iterate on the array in order to print all the students
students.each do |student|
  puts student
end 
# finally, we print the total number of students
puts "Overall, we have #{students.count} great students"
