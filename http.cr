require "http/server"

server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  context.response.print "Hello world! Welcome to my first Crystal HTTP server. The time is #{Time.local}."
end

address = server.bind_tcp 4321
puts "Listening on http://#{address}"
server.listen
