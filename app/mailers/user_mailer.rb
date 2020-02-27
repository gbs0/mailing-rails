class UserMailer < ApplicationMailer	
 	def greeting(array)
 		return array.sample
 	end

  def welcome(name, role)
    @name = name
    @last_name = last_name
    @role = role

    # Holds the ticket type
    # %w[RSVP Talk Inscrição Workshop]

    @passport_type = passport_type(passport)

    @role = persona(role)
    @cell_phone = cell_phone
    # Make a method for parse emails
    mail to: "to@example.org"
  end

 	def event_type(ticket_type)
 		return true if %w[RSVP Talk Inscrição Workshop].include?(ticket_type)
 	end

 	def persona(role)
 		if role == "admin"
			return "e de como podemos lhe ajudar a se tornar um dev,"
 		elsif role == "member"
 			return "e de como podemos lhe ajudar a alcançar o seu objetivo relacionado a startups"
 		elsif role == "vip"
 			return %w[]
 		elsif role == "dealer"
 			return %w[]
 		elsif role == "carrier"
 			return %w[e de como podemos lhe ajudar a alcançar o seu objetivo de mudar de carreira,]
 		else
 			""
 		end
 	end

 	def prospect(text)
 		meting_url = ""
 		@call = "Would You Like To Hear About Le Wagon's Other Free Workshops And Talks?"
 		@no = 	"No, thank you."
 		case text
 		  when @call
 			  "E se preferir, poderá conversar com Ana sobre o bootcamp através do link"
 		  when @no
 		    false
 		end


 	end



 	def more_about_us

 	end
end
