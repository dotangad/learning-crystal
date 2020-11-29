require "option_parser"

def print_members(shout)
  members = [
    "John Lennon",
    "Paul McCartney",
    "George Harrison",
    "Ringo Starr"
  ]

  members = members.map &.upcase if shout

  puts "Group Members"
  puts "============="
  members.each do |m|
    puts m
  end
end 

OptionParser.parse do |parser|
  parser.banner = "The Beatles CLI"

  parser.on "-v", "--version", "Show version information" do
    puts "The Beatles CLI"
    puts "Version 1.0.0"
    exit
  end

  parser.on "-h", "--help", "Show help" do
    puts parser
    exit
  end

  parser.on "print", "Print members" do
    print_members(false)
    exit
  end

  parser.on "shout", "SHOUT members" do
    print_members(true)
    exit
  end

  parser.invalid_option do |flag|
    STDERR.puts "Invalid option #{flag}"
    STDERR.puts parser
    exit 1
  end
end
