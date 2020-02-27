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

    # Make a method for parse emails
    mail to: "to@example.org"
  end

 	def passport_type(passport)
 		return true if %w[Roler Advanced Begginer].include?(passport)
 	end

 	def persona(role)
 		if role == "admin"
			return "and welcome Houston, you're on cabin!"
 		elsif role == "member"
 			return "and well, you shall not pass by this gate"
 		elsif role == "vip"
 			return %w[].sample
 		elsif role == "dealer"
 			return %w[].sample
 		elsif role == "carrier"
 			return %w[].sample
 		else
 			"and why are you here?"
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
end
