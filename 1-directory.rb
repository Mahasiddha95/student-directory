def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
#while the name is not empty, repeat this one
  while !name.empty? do
    #add a student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  student_count = 1
  students.each do |student|
    puts "#{student_count}.#{student[:name]} (#{student[:cohort]} cohort)"
    student_count = student_count + 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)

#first e print the list of students
