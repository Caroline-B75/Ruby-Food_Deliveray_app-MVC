class SessionsView
  def ask_user_for(stuff)
    puts "#{stuff}?"
    print "> "
    return gets.chomp
  end

  def print_wrong_credentials
    print "Wrong credentiales... Try again!"
  end

  def display(employees)
    employees.each_with_index do |employee, index|
      puts "#{index + 1}. #{employee.username} - #{employee.role}"
    end
  end
end
