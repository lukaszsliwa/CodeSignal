def lineUp(commands)
    count = 0
    smart_student = 0
    dumb_student = 0
    commands.split('').each do |command|
        if command == 'L'
            smart_student = (smart_student - 1) % 4
            dumb_student = (dumb_student + 1) % 4
        elsif command == 'R'
            smart_student = (smart_student + 1) % 4
            dumb_student = (dumb_student - 1) % 4
        elsif command == 'A'
            smart_student = (smart_student + 2) % 4
            dumb_student = (dumb_student + 2) % 4
        end
        count += 1 if smart_student == dumb_student
    end
    count
end

