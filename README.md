# step8
Each file is a new exercise of the step8 at Maker's 4th week pre-course. This were the requests starting from the original file:

# exercise 1
We're using the each() method to iterate over an array of students. How can you modify the program to print a number before the name of each student, e.g. "1. Dr. Hannibal Lecter"? Hint: look into each_with_index()

# exercise 2
Modify your program to only print the students whose name begins with a specific letter.

# exercise 3
Modify your program to only print the students whose name is shorter than 12 characters.

# exercise 4
Rewrite the each() method that prints all students using while or until control flow methods (Loops).

# exercise 5
Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc.

# exercise 6
Research how the method center() of the String class works. Use it in your code to make the output beautifully aligned.

# exercise 7
In the input_students method the cohort value is hard-coded. How can you ask for both the name and the cohort? What if one of the values is empty? Can you supply a default value? The input will be given to you as a string? How will you convert it to a symbol? What if the user makes a typo?

# exercise 8
Once you complete the previous exercise, change the way the users are displayed: print them grouped by cohorts. To do this, you'll need to get a list of all existing cohorts (the map() method may be useful but it's not the only option), iterate over it and only print the students from that cohort.

# exercise 9
Right now if we have only one student, the user will see a message "Now we have 1 students", whereas it should be "Now we have 1 student". How can you fix it so that it uses the singular form when appropriate and plural form otherwise?

# exercise 10
We've been using the chomp() method to get rid of the last return character. Find another method among those provided by the String class that could be used for the same purpose (although it will require passing some arguments).

# exercise 11
Once you have completed the "Asking for user input" section, open this file. It's Ruby code but it has some typos. Copy it to a local file and open it in VS Code without syntax highlighting. To do this, change the language of the file from 'Ruby' to 'Plain Text' by clicking the blue word 'Ruby' in the bottom right corner and searching for 'plain text'. It should look similar to this: https://raw.githubusercontent.com/anitacanita/student-directory/master/typos.rb
Now, find all typos in that file and correct them. Use your experience, online documentation, etc. to find all the mistakes. Run the script in the terminal from time to time to make sure it works as it should. Google the errors Ruby gives you, think about what they could mean, try different things but don't look the answer up

# exercise 12
What happens if the user doesn't enter any students? It will try to print an empty list. How can you use an if statement (Control Flow) to only print the list if there is at least one student in there?
