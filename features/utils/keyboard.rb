def use_keyboard(id, text)
	if shouldClearField(id, text)
    keyboard_enter_text(text)	
	end
end

def shouldClearField(id, text)
  # Get the current value of the input field
  value = Hash[*(queryById(id))]["value"]

  # Don't clear if the field is empty
  if value == nil
  	return false
  end

  # Don't clear if the the value matches the incoming text
  if value.eql? text
    return false
  end

  # Clear the field
  return clear(id)
end

def clear(id)
  # Must first touch the element
  touchById(id)

  # If the text length is long (~25 chars) the touch function doesn't 
  # place the cursor at the very end of the value, so we need to track our
  # progress, and retouch the element so we can continue backspacing
  prevLength = 0

  begin
    # Send a backspace key event
    system("#{default_device.adb_command} shell input keyevent KEYCODE_DEL")
    # Get a fresh copy of the element
    curLength = Hash[*(queryById(id))]["value"].length

    # Track progress, and retouch if necessary
    if curLength == prevLength
      touchById(id)
    else
      prevLength = curLength;
    end

  end until curLength == 0
  return true
end