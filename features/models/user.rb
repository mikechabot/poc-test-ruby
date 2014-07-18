class User 

  @validUser = "demo@healthwyse.com"
  @validPass = "123GoTeam"

  @invalidUser = "foobar@healthwyse.com"
  @invalidPass = "foobar"

  @lockedUser = "lockedaccount@healthwyse.com"

  @usernameId = "userName"
  @passwordId = "password"

  def initialize(username, password)  
    @username = username  
    @password = password
  end
  
  def username
    @username
  end
  
  def password
    @password
  end

  def self.usernameId
    @usernameId
  end
  
  def self.passwordId
    @passwordId
  end

  def self.getValidUser
    return new(@validUser, @validPass)
  end

  def self.getInvalidUser
    return new(@invalidUser, @invalidPass)
  end

  def self.getLockedUser
    return new(@lockedUser, @validPass)
  end
  
end 