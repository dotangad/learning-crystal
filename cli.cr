require "option_parser"

OptionParser.parse do |parser|
  parser.banner = "Example CLI with crystal"

  parser.on "-a", "--optiona", "Option A" do
    puts "A"
    exit
  end
  
  parser.on "-b", "--optionb", "Option B" do
    puts "B"
    exit
  end

  parser.on "-h", "--help", "Help" do
    puts parser
    exit
  end
end
