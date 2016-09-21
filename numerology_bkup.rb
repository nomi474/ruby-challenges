puts "Enter your birth date in the format MMDDYYYY"

birthDate = gets
birthDate = birthDate.chop()
print "Birth date after chopping #{birthDate}"
    while !(birthDate.length == 8)
        puts "Birthdate length is #{(birthDate.size).to_s}"
        puts "Please enter the date in the format MMDDYYY."
        birthDate = gets
    end
    if birthDate.contains('/')
        puts "Please enter your birth date without entering the symbol '/'. Please use the MMDDYYYY format"
    elsif !(birthDate == NULL || birthDate == "")
        print "Your birthdate is #{birthDate.to_s}"
    end
