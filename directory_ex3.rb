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

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students_filtered)
  puts "Overall, we have #{students_filtered.count} great students with names shorter than 12 characters"
end

def filter_array(students)
  students_filtered = []
  students.each do |student|
    if student[:name].length < 12
    students_filtered << student
    end
  end
  students_filtered
end

students = input_students
students_filtered = filter_array(students)
#nothing happens until we call the methods
print_header
print(students_filtered)
print_footer(students_filtered)