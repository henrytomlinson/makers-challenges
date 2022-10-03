class PasswordManager
    def initialize#(service,password)
        #@service = service
        #@password = password
        @password_manager = {}
    end
    
    #def valid?(password)  # check password valid 
        #password.length >= 8 && /\W/ === password #\W	checks for any any non-word character
    #end

    def add(service,password)
# check password valid #takes two strings as args
        if password.length >= 8 && special_chars_included?(password)	#checks for  any any non-word character
            
            return @password_manager[service] = password#{"service" => service, "password" => password}
        end
    end


    

    #takes one string as an arg
    def password_for(service)
        return @password_manager[service]
    end
    
    # takes no args
    def services
        return @password_manager.keys
    end
    
    

    def special_chars_included?(password)
  # `/[!@$%&]/` is the regex
  # it matches (detects) any of the 5 special characters
        required_chars = /[!@$%&]/
        if password =~ required_chars
            return true
        else
            return false
        end
    end

end
#p passwordmanager = PasswordManager.new
#p passwordmanager.add("any","12345678!")
#p passwordmanager
#p passwordmanager.services shows the services
#p passwordmanager.password_for("any") shows the password for any

