def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp.upcase
  if !name.empty?
    # get the cohort
    puts "Please, enter the cohort of this student"
    cohort = gets.chomp.downcase
    if cohort.empty? 
      cohort = "2023"
    end
  end
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count} students, add a new one or hit return to stop"
    # get another name from the user
    name = gets.chomp.upcase
    if !name.empty?
      # get the cohort of this student
      puts "Please, enter the cohort of this student"
      cohort = gets.chomp.downcase
      if cohort.empty? 
        cohort = "2023"
      end
    end
  end
  # return the array of students
  students
end

def filtered_by_cohort(students)
  filtered_by_cohort = {}
  students.each do |student|
    cohort = student[:cohort]
    name = student[:name]

    if filtered_by_cohort[cohort] == nil
      filtered_by_cohort[cohort] = [name]
    else
    filtered_by_cohort[cohort].push(name)
    end
  end
  filtered_by_cohort
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(filt_students)
  filt_students.each do |key, value|
    puts "#{key}: #{value}"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
filt_students = filtered_by_cohort(students)
#nothing happens until we call the methods
print_header
print(filt_students)
print_footer(students)