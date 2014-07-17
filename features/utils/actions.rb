def touchById(id)
	touch("webView css:'##{id}'")
	rest
end

def touchByType(type)
  touch("webView css:'#{type}'")
  rest
end

def touchByQuery(query)
  touch("#{query}")
  rest
end

def queryById(id)
	return query("webView css:'##{id}'")
end

def queryByType(type)
  return query("webView css:'#{type}'")
end

def waitForById(timeout, id)
  wait_for(:timeout => timeout) { element_exists("webView css:'##{id}'") }
end

def existsById(id)
  return element_exists("webView css:'##{id}'")
end

def assertExistsById(id)
  check_element_exists("webView css:'##{id}'")
end

def swipeUp
	perform_action('drag', 50, 50, 70, 90, 10)
  rest
end

def swipeDown
	perform_action('drag', 50, 50, 90, 70, 10)
  rest
end

def swipeLeft
	perform_action('drag', 1, 99, 50, 50, 5)
  rest
end

def swipeRight
	perform_action('drag', 99, 1, 50, 50, 5)
  rest
end

def rest
  sleep(1)
end