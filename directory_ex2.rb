def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp.upcase
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp.upcase
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def get_letter
  puts "Write a letter to see a list of students with that initial"
  initial = gets.chomp.upcase
  return initial
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students_filtered, initial)
  puts "Overall, we have #{students_filtered.count} great students with the letter #{initial}"
end

def filter_array(students, initial)
  students_filtered = []
  students.each do |student|
    if student[:name].chr[0] == initial
    students_filtered << student
    end
  end
  students_filtered
end

students = input_students
initial = get_letter
students_filtered = filter_array(students, initial)
#nothing happens until we call the methods
print_header
print(students_filtered)
print_footer(students_filtered, initial)