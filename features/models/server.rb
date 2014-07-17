class Server
  
  @valid = "https://v-training3.healthwyse.com"
  @invalid = "https://www.google.com"

  @serverId = "server"
  
  def initialize(host)
    @host = host
  end

  def host
    @host
  end

  def self.serverId
    @serverId
  end
  
  def self.getValidServer
    return Server.new(@valid)
  end

  def self.getInvalidServer
    return Server.new(@invalid)
  end

end