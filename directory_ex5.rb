def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp.upcase
  if !name.empty?
    # get the first age
    puts "Please enter age of this student"
    age = gets.chomp.to_i
    # get the first country
    puts "Please enter the country of this student"
    country = gets.chomp.upcase
    # while the name is not empty, repeat this code
    while !name.empty? do
      # add the student hash to the array
      students << {name: name, cohort: :november, age: age, country: country}
      puts "Now we have #{students.count} students"
      puts "Write the name of another student or hit return to stop"
      # get another name from the user
      name = gets.chomp.upcase
      if !name.empty?
        # get another age
        puts "Please enter age of this student"
        age = gets.chomp.to_i
        # get another country
        puts "Please enter the country of this student"
        country = gets.chomp.upcase
      end
    end
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
    puts "Name: #{student[:name]} - Age: #{student[:age]} - Country: #{student[:country]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)