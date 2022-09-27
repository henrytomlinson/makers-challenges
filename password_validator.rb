# Valid passowords are
# - 8 or more characters
# - include at least one of these characters: !, @, $, %, &

#required_chars = /[!@$%&]/

#def special_chars_included?(password)
  # `/[!@$%&]/` is the regex
  # it matches (detects) any of the 5 special characters
  #if password =~ required_chars
    #return true
  #else
    #return false
  #end
#end

def valid?(password)   
    password.length >= 8 && /\W/ === password #\W	checks for any any non-word character
end