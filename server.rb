require 'gserver'

class Server < GServer

  def initialize
    super(8111)
  end

  def message(client)
    client.puts "Hi there"
  end
  
end

server = Server.new
server.start.join
