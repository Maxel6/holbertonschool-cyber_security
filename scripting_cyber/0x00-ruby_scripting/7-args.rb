def print_arguments
    # Check if arguments are provided
    if ARGV.empty?
      puts "No arguments provided."
    else
        puts "Arguments:"
      # Print each argument with its index
      ARGV.each_with_index do |arg, index|
        puts "#{index + 1}. #{arg}"
      end
    end
  end
  