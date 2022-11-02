@students = []
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
#while the name is not empty, repeat this one
  while !name.empty? do
    #add a student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  @students
end


def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end


def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end


def show_students
  print_header
  print_student_list
  print_footer # show the students
end



def interactive_menu
  loop do
  selection = gets.chomp
  end
end


def process(selection)
  case selection
    when "1"
      input_students # input the students
    when "2"
      show_students
    when "9"
      exit #this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
# 4. repeat from step 1
  end
end


interactive_menu

#first we print the list of students
