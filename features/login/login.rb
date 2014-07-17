def enterValidCredentials
   # Assert fields exsits
  assertExistsById(User.usernameId)
  assertExistsById(User.passwordId)
  # Enter login information
  user = User.getValidUser
  use_keyboard(User.usernameId, user.username)
  use_keyboard(User.passwordId, user.password)
end

def pointToValidServer
  swipeLeft
  # Open advanced options
  touchByType("a")
  # Assert fields exists
  assertExistsById(Server.serverId)
  # Enter server information
  server = Server.getValidServer
  use_keyboard(Server.serverId, server.host)
end

def tapLogin 
  swipeLeft
  touchById("loginButton")
end

def assertSyncCompletion
  # Due to ACH-569, we'll use this (for now) to verify sync completion 
  waitForById(300, "mainOptionButton")
end

def tapLogout
  touchById("mainOptionButton")
  touchByQuery("webView css:'#optionDropdown li:nth-child(4)'")
end

def assertLogoutSuccess
  # Assert the logout succeeded by checking for the login form
  assertExistsById(User.usernameId)
  assertExistsById(User.passwordId)
end